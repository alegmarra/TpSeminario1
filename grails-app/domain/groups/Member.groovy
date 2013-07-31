package groups

class Member {

    // This propery may not exist when the User entity is done, or maybe
    // it will be just be a copy of User.name
    String name

    static constraints = {
        name blank: false
    }
}
