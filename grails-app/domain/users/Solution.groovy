package users

import groups.Member
import groups.Project
import groups.State
import groups.Visibility

class Solution {

    Date submitionDate

    String codeURL //github repo url?

    Visibility visibility
    State state

    static belongsTo = [
            project: Project,
            creator: Member
    ]

    static constraints = {
        submitionDate nullable: true, display: false, years:2013..2014
//        codeURL url: true
    }


}
