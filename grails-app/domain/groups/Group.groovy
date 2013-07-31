package groups

class Group {
    String name
    static hasOne = [admin: Member]
//    Member admin
    static hasMany = [
            collaborators: Member,
            members: Member
    ]

    static constraints = {
//        admin nullable: false
        name blank: false
    }

    static mapping = {
        table 'groups'
    }
}
