import UIKit

class CatsListService: CatsListServiceProtocol {
    func getCatsList() -> [String] {
        return ["cats1","cats2","cats3","cats4", "cats5"]
    }
}

class CatDetailService: CatDetailServiceProtocol {
    func getCatDetail(name: String) -> String {
        return "\(name)'s Detail"
    }
}

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
