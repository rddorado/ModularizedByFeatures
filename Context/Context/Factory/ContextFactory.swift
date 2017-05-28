import UIKit


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
    func catsListService() -> CatsListServiceProtocol
    func catDetailService() -> CatDetailServiceProtocol
}

open class ContextFactory: ContextProtocol {
    public init() {
        
    }
    
    public func loginService() -> LoginServiceProtocol {
        return LoginService()
    }
    
    public func userInfoService() -> UserInfoServiceProtocol {
        return UserInfoService()
    }
    
    public func catsListService() -> CatsListServiceProtocol {
        return CatsListService()
    }
    
    public func catDetailService() -> CatDetailServiceProtocol {
        return CatDetailService()
    }
}

