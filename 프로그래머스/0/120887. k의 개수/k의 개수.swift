import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result = 0
    
    (i...j).forEach {
        result += Array(String($0)).count(where: { String($0) == "\(k)" })
    }
    
    return result
}