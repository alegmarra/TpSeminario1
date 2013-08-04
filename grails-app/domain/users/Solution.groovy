package users

import groups.Project

class Solution {

    String ownerID

    String codeURL //github repo url?

    static belongsTo = [project: Project, owner: User]

    static constraints = {

    }
}
