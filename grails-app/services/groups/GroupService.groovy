package groups

import grails.plugins.springsecurity.Secured
import grails.plugins.springsecurity.SpringSecurityService
import users.User

class GroupService {

    static def springSecurityService = new SpringSecurityService()

    /*
    * Retuns null on invalid creation of the group,
    * Fails if error with user or membership
    *
    */
    @Secured(['ROLE_USER', 'ROLE_ADMIN'])
    static Group create(String groupName) {

        def userName = currentUser().username

        def adminship = new Membership(userKey: userName, groupKey: groupName).save(failOnError: true)

        new Group(name: groupName, adminship: adminship).save(flush: true)

    }

    static def currentUser() {

        User.get(springSecurityService.principal.id)
    }

}
