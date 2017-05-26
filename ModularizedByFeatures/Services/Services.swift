import UIKit

class DogsListService: DogsListServiceProtocol {
    func getDogsList() -> [String] {
        return ["dogs1","dogs2","dogs3","dogs4"]
    }
}

class DogDetailService: DogDetailServiceProtocol {
    func getDogDetail(name: String) -> String {
        return "\(name)'s Detail"
    }
}

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
