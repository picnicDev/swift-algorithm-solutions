import Foundation

func solution(_ n:Int) -> Int {
    var count = 0
    let limit = Int(sqrt(Double(n)))
    for i in 1...limit {
        if n % i == 0 { count += 1 }
    }
    
    return limit * limit == n ? count * 2 - 1 : count * 2
}