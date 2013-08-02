package groups

class Group {
    String name
    Membership adminKey
//    static hasOne = [admin: User]
//    Member admin
    static hasMany = [
            collaborators: Member,
            members: Member
    ]

    static constraints = {
//        admin nullable: false
        name size: 4..60, unique: true
        adminKey editable: false
    }

    static mapping = {
        table 'groups'
    }
}
