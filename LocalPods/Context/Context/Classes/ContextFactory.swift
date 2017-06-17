import UIKit

public protocol LoginServiceProtocol {
    func login()
}

public protocol UserInfoServiceProtocol {
    func getUsername() -> String
}

public protocol ContextProtocol {
    func loginService() -> LoginServiceProtocol
    func userInfoService() -> UserInfoServiceProtocol
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
    
    public func objcService() -> ObjcServiceProtocol{
        return ObjcService();
    }
}
