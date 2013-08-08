package users

import grails.plugins.springsecurity.SpringSecurityService

class UserService {

    static def springSecurityService = new SpringSecurityService()

    static def authenticate(String login, String password) {
       User.findByLoginAndPassword(login, password)
    }

    static def currentUser() {

        User.get(springSecurityService.principal.id)
    }

    static def create(def params){

        def userInstance = new User(params)

        userInstance?.enabled = true
        userInstance?.joinDate = new Date()

        userInstance?.save(failOnError: true, flush:true)

        SecUserSecRole.create userInstance, SecRole.findByAuthority("ROLE_USER")

        return userInstance

    }
}
