package groups

import org.springframework.dao.DataIntegrityViolationException

class MembershipController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [membershipInstanceList: Membership.list(params), membershipInstanceTotal: Membership.count()]
    }

    def create() {
        [membershipInstance: new Membership(params)]
    }

    def save() {
        def membershipInstance = new Membership(params)
        if (!membershipInstance.save(flush: true)) {
            render(view: "create", model: [membershipInstance: membershipInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'membership.label', default: 'Membership'), membershipInstance.id])
        redirect(action: "show", id: membershipInstance.id)
    }

    def show(Long id) {
        def membershipInstance = Membership.get(id)
        if (!membershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'membership.label', default: 'Membership'), id])
            redirect(action: "list")
            return
        }

        [membershipInstance: membershipInstance]
    }

    def edit(Long id) {
        def membershipInstance = Membership.get(id)
        if (!membershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'membership.label', default: 'Membership'), id])
            redirect(action: "list")
            return
        }

        [membershipInstance: membershipInstance]
    }

    def update(Long id, Long version) {
        def membershipInstance = Membership.get(id)
        if (!membershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'membership.label', default: 'Membership'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (membershipInstance.version > version) {
                membershipInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'membership.label', default: 'Membership')] as Object[],
                          "Another user has updated this Membership while you were editing")
                render(view: "edit", model: [membershipInstance: membershipInstance])
                return
            }
        }

        membershipInstance.properties = params

        if (!membershipInstance.save(flush: true)) {
            render(view: "edit", model: [membershipInstance: membershipInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'membership.label', default: 'Membership'), membershipInstance.id])
        redirect(action: "show", id: membershipInstance.id)
    }

    def delete(Long id) {
        def membershipInstance = Membership.get(id)
        if (!membershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'membership.label', default: 'Membership'), id])
            redirect(action: "list")
            return
        }

        try {
            membershipInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'membership.label', default: 'Membership'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'membership.label', default: 'Membership'), id])
            redirect(action: "show", id: id)
        }
    }
}
