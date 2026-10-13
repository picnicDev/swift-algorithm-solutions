import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    // 순회를 하면서 상태를 나눠. 
    enum LoginStatus {
        case login, fail, wrongPw
        
        var message: String {
            switch self {
                case .login: return "login"
                case .fail: return "fail"
                case .wrongPw: return "wrong pw"
            }
        }
    }
    
    var status: LoginStatus = .fail
    
    for info in db {
        if info[0] == id_pw[0] {
            status = .wrongPw
            
            if info[1] == id_pw[1] {
                status = .login
                return status.message
            }
        } 
    }
    
    return status.message
}