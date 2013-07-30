package com.projects

import com.projects.solutions.Solution
import com.users.User
import com.groups.Group

enum State {Public, Private, Historical}

enum Visibility {Public, Private, Owner}


class Project{

	GString objective
    Visibility visibility
    State state // Public, Private, Historical

    Date projectSoftDeadline  // la de primer entrega
    Date projectHardDeadline  // la inamovible

	static hasMany = [solutions: Solution]
    static belongsTo = [creator: User, group: Group]


	void commitSolution(Solution newSolution){

        addToSolutions(newSolution)
    }

}
