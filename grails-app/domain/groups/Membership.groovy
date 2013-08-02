package groups

class Membership {

    String userKey
    String groupKey

    String key = "$userKey:$groupKey".getBytes().encodeBase64().toString()

    static constraints = {

        key display: false

    }
}
