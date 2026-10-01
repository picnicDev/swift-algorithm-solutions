import Foundation

func solution(_ array:[Int]) -> Int {
    var result = 0
    
    array.forEach {
        result += String($0).count(where: { $0 == "7" })
    }
    
    return result
}