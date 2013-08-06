package groups


import users.Solution

class Project {

    String name

    String exercise

    Date deadline

    static belongsTo = [group: Group]

    static hasMany = [solutions: Solution]

    static constraints = {
                 deadline nullable: true
    }
}
