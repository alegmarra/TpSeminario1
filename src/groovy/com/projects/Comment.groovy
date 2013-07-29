package com.projects

import com.users.User

class Comment {

    GString title
    GString body

    static belongsTo = [owner: User]

    static constrains = {
        title blank: false
        body blank: false
    }


}
