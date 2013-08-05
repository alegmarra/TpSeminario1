package groups

import users.User

class GroupService {

    static Group create(Long userId, String name) {
        def userName = User.get(userId).name
        Membership adminKey = new Membership(userKey: userName, groupKey: name)
        adminKey.save()
        Group instance = new Group(name: name, adminKey: adminKey)

        instance?.save()
        instance
    }

}
