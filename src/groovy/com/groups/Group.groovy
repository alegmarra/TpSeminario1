package com.groups

import com.projects.Project
import com.projects.Visibility


abstract class Group{

    Visibility visibility

    static hasOne = [admin: MemberData]

    static hasMany = [
            collaborators: MemberData,
            members: MemberData,
            projects: Project]

	static constrains = { collaborators nullable:true   }




}

