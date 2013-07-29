package com.projects.solutions

import com.projects.Project
import com.projects.Visibility
import com.projects.Comment
import com.users.User


class Solution{
	static belongsTo = [project: Project, creator: User]
	static hasMany = [comments: Comment, fixes: Fix]
    static hasOne = [score: Score]

	Visibility visibility

	void edit(){}
}
