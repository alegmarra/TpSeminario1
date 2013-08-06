package groups

import users.User

class GroupService {

    static Group create(Long userId, String name) {
        def userName = User.get(userId).login
        Membership adminship = new Membership(userKey: userName, groupKey: name)
        adminship.save()
        Group instance = new Group(name: name, adminship: adminship)

        // Chequear errores, podría no salvarse!
        instance.save()
        instance
    }

}
