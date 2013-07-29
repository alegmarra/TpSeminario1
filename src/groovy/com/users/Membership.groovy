package com.users

import com.groups.Group

class Membership {

    static belongsTo = [owner: User, group: Group]

}
