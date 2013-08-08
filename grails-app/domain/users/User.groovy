package users

import groups.Membership


class User extends SecUser{

    Date joinDate
    String fullName

    static hasMany = [
            memberShips: Membership
    ]

    static constraints = {
        fullName size: 2..200, blank: true
        memberShips display: false
        joinDate nullable: true, display: false
        username blank: false, unique: true, size: 4..30
        password blank: false, password: true

    }

    static mapping = {
        table 'users'
    }


    String toString(){ username }

}



