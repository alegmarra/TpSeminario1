package users

import groups.Member

class Fix {


    static belongsTo = [
            solution: Solution,
            creator: Member
    ]

    static constraints = {
    }
}
