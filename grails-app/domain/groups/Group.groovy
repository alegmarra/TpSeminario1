package groups
import users.User

class Group {
    String name
    Membership adminship

    static hasMany = [
            collaborators: Member,
            members: Member
    ]

    static constraints = {
        name size: 4..60, unique: true
        adminship editable: false
    }

    static mapping = {
        table 'groups'
    }

}
