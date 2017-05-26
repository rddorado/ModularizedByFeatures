import UIKit

protocol DogsListServiceProtocol {
    func getDogsList() -> [String]
}

protocol DogDetailServiceProtocol {
    func getDogDetail(name: String) -> String
}

protocol CatsListServiceProtocol {
    func getCatsList() -> [String]
}

protocol CatDetailServiceProtocol {
    func getCatDetail(name: String) -> String
}

protocol LoginServiceProtocol {
    func login()
}

protocol UserInfoServiceProtocol {
    func getUsername() -> String
}

protocol ContextProtocol {
    func loginService() -> LoginServiceProtocol
    func userInfoService() -> UserInfoServiceProtocol
    func dogsListService() -> DogsListServiceProtocol
    func dogDetailService() -> DogDetailServiceProtocol
    func catsListService() -> CatsListServiceProtocol
    func catDetailService() -> CatDetailServiceProtocol
}

class ContextFactory: ContextProtocol {
    func loginService() -> LoginServiceProtocol {
        return LoginService()
    }
    
    func userInfoService() -> UserInfoServiceProtocol {
        return UserInfoService()
    }
    
    func dogsListService() -> DogsListServiceProtocol {
        return DogsListService()
    }
    
    func dogDetailService() -> DogDetailServiceProtocol {
        return DogDetailService()
    }
    
    func catsListService() -> CatsListServiceProtocol {
        return CatsListService()
    }
    
    func catDetailService() -> CatDetailServiceProtocol {
        return CatDetailService()
    }
}

