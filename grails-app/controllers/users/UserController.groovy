package users

import grails.plugins.springsecurity.Secured
import org.springframework.dao.DataIntegrityViolationException
import groups.GroupService

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]


    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create() {
        [userInstance: new User(params)]
    }

//    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def save() {
//        def userInstance = new User(params)

        def userInstance = UserService.create(params)

        if (!userInstance) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def edit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }

//    def scaffold = User
//
//    def login = {
//        //Renders login view
//    }
//
//    def authenticate = {
//        def user = UserService.authenticate(params.login, params.password)
//
//        if(user){
//            session.user = user
//            flash.message = "Hello ${user.name}!"
//            redirect(controller:"user", action:"list")
//        }else{
//            flash.message = "Sorry, ${params.login}. Please try again."
//            redirect(action:"login")
//        }
//    }
//
//    def logout = {
//        flash.message = "Goodbye ${session.user.name}"
//        session.user = null
//        redirect(controller:"user", action:"list")
//    }

    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def createGroup(String name) {
        def id = UserService.currentUser().id

        def groupInstance = GroupService.create(name)

        if (!groupInstance) {
            println '!groupInstance'
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), id])
            redirect(action: "show", id: id)
            return
        }

        redirect(controller: "group", action: "list")
    }
}
