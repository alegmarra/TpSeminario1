package com.groups

import com.projects.solutions.Score

class MemberData {

    String key

    static hasMany = [scores: Score]

    static constraints = { key blank:false }

}
