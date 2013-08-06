package UserServices

import grails.plugins.springsecurity.SpringSecurityService
import users.User

class UserLoginService {

    static def springSecurityService

    static def authenticate(String login, String password) {
       User.findByLoginAndPassword(login, password)
    }

    static def currentUser() {

        User.get(springSecurityService.principal.id)
    }
}
