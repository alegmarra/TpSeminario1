package users

import groups.Membership


class User {

    String name
    String login
    String password

    static hasMany = [
            memberShips: Membership
    ]

    static constraints = {
        name size: 6..30
        login size: 6..30, unique: true
        password password: true
        memberShips display: false
    }

    static mapping = {
        table 'users'
    }


    String toString(){ name }

}



