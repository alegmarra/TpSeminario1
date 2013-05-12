CCC(C³)
========

Notes about proyect design

Classes
-------
Reading the user stories and the google doc, I identified the following posible classes

    (class  ? interface ?)User
    |
    |_  class Proffessor
    |
    |_  class Student
          Rate / Score

    class Group
      class ClassRoom / PrivateClass
        Proffesor
        Students *
        Proyects

      class Comunity / OpenGroup
        Users


    class Code #?
      #Status
      Score / Rate
      Issues *
      Student #Author
      Version
      Editions #?
      Discussion #?

    class Proyect / Problem ? #Here, I don't know if a proyect is a solution or if it's the problem itself.
      Description
      FinishTime
      Code *
      Discussion #?

    class Discussion #This may be trivial
      Comments *