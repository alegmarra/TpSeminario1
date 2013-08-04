package users

import groups.Membership


class User {

    String name
    String login
    String password

    // Basic idea just for testing purpouse, not safe at all
//    String userID  = "$name:$password".getBytes().encodeBase64().toString()

    static hasMany = [
            memberShips: Membership
    ]

    static constraints = {
        name size: 6..30, unique: true
        login unique: true
        password password: true
//        userID display: false
        memberShips display: false
    }

    static mapping = {
        table 'users'
    }


    String toString(){ name }

}



