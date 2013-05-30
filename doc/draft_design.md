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
	admin
	roots
	users
      
      class ClassRoom / PrivateClass
        Proffesor #Admin
        Assistants * #SuperUser
        Students * #Normal Users
        Proyects

      class Comunity / OpenGroup
        Users
        Admin

    class Code #?
      #Status
      Score / Rate
      Issues *
      Student #Author
      Version
      Editions #?
      Discussion #?

    class Project / Problem ? #The project is the problem itself
      Description
      FinishTime
      Code *
      Discussion #?

    class Discussion #This may be trivial
      Comments *

    class Settings
      subject
      correlatives
      "publicly" level
      duration
      start date
      tags
