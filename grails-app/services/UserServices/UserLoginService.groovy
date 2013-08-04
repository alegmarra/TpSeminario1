package UserServices

import users.User

class UserLoginService {

    static def authenticate(String login, String password) {
       User.findByLoginAndPassword(login, password)
    }
}
