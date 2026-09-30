import Foundation

func solution(_ n:Int) -> Int {
    let sqrt = Int(sqrt(Double(n)))
    
    return (sqrt * sqrt) == n ? 1 : 2
}