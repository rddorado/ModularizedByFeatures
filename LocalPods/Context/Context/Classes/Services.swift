import UIKit

class LoginService: LoginServiceProtocol {
    func login() {
        print("Login!")
    }
}

class UserInfoService: UserInfoServiceProtocol {
    func getUsername() -> String {
        return "Tim Cook"
    }
}
