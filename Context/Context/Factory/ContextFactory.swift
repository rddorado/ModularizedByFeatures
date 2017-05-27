import UIKit

public protocol DogsListServiceProtocol {
    func getDogsList() -> [String]
}

public protocol DogDetailServiceProtocol {
    func getDogDetail(name: String) -> String
}

public protocol CatsListServiceProtocol {
    func getCatsList() -> [String]
}

public protocol CatDetailServiceProtocol {
    func getCatDetail(name: String) -> String
}

public protocol LoginServiceProtocol {
    func login()
}

public protocol UserInfoServiceProtocol {
    func getUsername() -> String
}

public protocol ContextProtocol {
    func loginService() -> LoginServiceProtocol
    func userInfoService() -> UserInfoServiceProtocol
    func dogsListService() -> DogsListServiceProtocol
    func dogDetailService() -> DogDetailServiceProtocol
    func catsListService() -> CatsListServiceProtocol
    func catDetailService() -> CatDetailServiceProtocol
}

public class ContextFactory: ContextProtocol {
    public init() {
        
    }
    
    public func loginService() -> LoginServiceProtocol {
        return LoginService()
    }
    
    public func userInfoService() -> UserInfoServiceProtocol {
        return UserInfoService()
    }
    
    public func dogsListService() -> DogsListServiceProtocol {
        return DogsListService()
    }
    
    public func dogDetailService() -> DogDetailServiceProtocol {
        return DogDetailService()
    }
    
    public func catsListService() -> CatsListServiceProtocol {
        return CatsListService()
    }
    
    public func catDetailService() -> CatDetailServiceProtocol {
        return CatDetailService()
    }
}

