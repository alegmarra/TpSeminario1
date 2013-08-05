package groups


import users.Solution


class Project {

    String name
    String description

    Date softDeadline
    Date finalDeadline

    Visibility visibility
    State state

    static belongsTo = [
            group: Group,
            creator: Member
    ]

    static hasMany = [solutions: Solution]

    static constraints = {
        softDeadline nullable: true
        finalDeadline nullable: true
    }
}
