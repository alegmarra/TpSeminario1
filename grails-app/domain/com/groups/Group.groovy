package com.groups

import com.projects.Project
import com.projects.Visibility


class Group{

    Visibility visibility

    MemberData admin
    //static hasOne = [admin: MemberData]

    String name

    static hasMany = [
            collaborators: MemberData,
            members: MemberData,
            projects: Project]

	static constrains = { name blank:false }

}

