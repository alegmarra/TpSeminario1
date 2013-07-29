package com.users

class User {

    GString name
    PasswordAuthentication authenticator

    static hasMany = [memberships: Membership]
}
