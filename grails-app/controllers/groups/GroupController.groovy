package groups

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException

class GroupController {

    def SpringSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]


    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [groupInstanceList: Group.list(params), groupInstanceTotal: Group.count()]
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def create() {
        [groupInstance: new Group(params), ]
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN', ''])
    def save(String name) {

        def groupInstance = GroupService.create(name)

        if (!groupInstance) {
            render(view: "create", model: [groupInstance: groupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'group.label', default: 'Group'), groupInstance.id])
        redirect(action: "show", id: groupInstance.id)
    }

    def show(Long id) {
        def groupInstance = Group.get(id)
        if (!groupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), id])
            redirect(action: "list")
            return
        }

        [groupInstance: groupInstance]
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def edit(Long id) {
        def groupInstance = Group.get(id)
        if (!groupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), id])
            redirect(action: "list")
            return
        }

        [groupInstance: groupInstance]
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def update(Long id, Long version) {
        def groupInstance = Group.get(id)
        if (!groupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (groupInstance.version > version) {
                groupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'group.label', default: 'Group')] as Object[],
                          "Another user has updated this Group while you were editing")
                render(view: "edit", model: [groupInstance: groupInstance])
                return
            }
        }

        groupInstance.properties = params

        if (!groupInstance.save(flush: true)) {
            render(view: "edit", model: [groupInstance: groupInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'group.label', default: 'Group'), groupInstance.id])
        redirect(action: "show", id: groupInstance.id)
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def delete(Long id) {
        def groupInstance = Group.get(id)
        if (!groupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), id])
            redirect(action: "list")
            return
        }

        try {
            groupInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'group.label', default: 'Group'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'group.label', default: 'Group'), id])
            redirect(action: "show", id: id)
        }
    }
}
