import grails.plugins.springsecurity.SpringSecurityService
import users.SecRole
import users.SecUserSecRole
import users.User

class BootStrap {

    def init = { servletContext ->

        println "create Roles"
        def visitorRole = SecRole.findByAuthority("ROLE_VISITOR") ?: new SecRole(authority: "ROLE_VISITOR").save(failOnError: true)
        def userRole = SecRole.findByAuthority("ROLE_USER") ?: new SecRole(authority: "ROLE_USER").save(failOnError: true)
        def adminRole = SecRole.findByAuthority("ROLE_ADMIN") ?: new SecRole(authority: "ROLE_ADMIN").save(failOnError: true)

        def user = null
        //Create an admin, and a group for Login and Projects easy testing
        println "create Admin"

        def admin = new User( username: "admin",
                              password: "admin",
                              enabled: true,
                              joinDate: null,
                              fullName: "Admin Admin").save(failOnError: true)

        SecUserSecRole.create admin, adminRole

    }

    def destroy = {
    }
}
