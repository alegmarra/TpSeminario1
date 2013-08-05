package groups

import users.Solution

class Member {

    Membership membership

    static hasMany = [
            projects: Project,
            solutions: Solution
    ]

    static constraints = {

    }
}
