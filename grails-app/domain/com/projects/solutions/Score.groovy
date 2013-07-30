package com.projects.solutions

class Score {

    int ponderatedAverage

    static belongsTo = [solution: Solution]

    static constraints = {
        ponderatedAverage (min: 0, max: 100)
    }
}
