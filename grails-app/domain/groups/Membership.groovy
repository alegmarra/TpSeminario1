package groups

class Membership {

    String userKey
    String groupKey

    String key = "$userKey:$groupKey"

    static constraints = {

        key display: false, unique: true


    }
}
