CCC(C³)
========

Notes about proyect design

Classes
-------
Reading the user stories I identified the following posible classes

    (class  ? interface ?)User
    |
    |_  class Proffessor
    |
    |_  class Student
          Rate / Score

    class ClassRoom
      Proffesor
      Students *
      Proyects

    class Code #?
      #Status
      Score
      Issues *
      Student #Author
      Version
      Editions #?

    class Proyect
      Description
      FinishTime
      Code *
