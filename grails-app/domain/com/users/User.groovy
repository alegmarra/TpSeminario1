package com.users


class User {

    String name

    static hasMany = [memberships: Membership]
}
