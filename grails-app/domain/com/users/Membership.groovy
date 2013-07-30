package com.users

import com.groups.Group

class Membership {

    static belongsTo = [owner: User, group: Group]

    private String user
    private String password

    private String groupName

    def key = "$user:$password:$groupName".getBytes().encodeBase64().toString()

}
