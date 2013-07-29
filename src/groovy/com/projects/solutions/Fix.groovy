package com.projects.solutions

import com.users.User

class Fix {

    GString versionURL   // Se supone que tendría un link a la version en github para hacer un render de eso...


    static belongsTo = [creator: User, original: Solution]
}
