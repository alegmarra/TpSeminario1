import grails.plugins.springsecurity.SpringSecurityService
import users.SecRole
import users.SecUserSecRole
import users.User

class BootStrap {

    def SpringSecurityService

    def init = { servletContext ->

        //Create an admin, and a group for Login and Projects easy testing
        def admin = User.count() ?: new User(
                                            username: "admin",
                                            password: "admin",
                                            enabled: true)

        def visitorRole = SecRole.findByAuthority("ROLE_VISITOR") ?: new SecRole(authority: "ROLE_VISITOR").save()
        def userRole = SecRole.findByAuthority("ROLE_USER") ?: new SecRole(authority: "ROLE_USER").save()
        def adminRole = SecRole.findByAuthority("ROLE_ADMIN") ?: new SecRole(authority: "ROLE_ADMIN").save()


//        SecRole.findByAuthority("ROLE_GROUP_ADMIN") ?: new SecRole(authority: "ROLE_GROUP_ADMIN").save()



        SecUserSecRole.create(admin, adminRole)
    }

    def destroy = {
    }
}
