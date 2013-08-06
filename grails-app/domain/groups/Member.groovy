package groups

class Member {

    // This property may not exist when the User entity is done, or maybe
    // it will be just be a copy of User.name
    String name


//    static belongsTo = [group: Group]
    Membership membership

//    static hasOne = [memberShip: Membership]

    static constraints = {

    }
}
