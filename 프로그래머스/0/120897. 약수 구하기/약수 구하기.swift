import Foundation

func solution(_ n:Int) -> [Int] {
    var factorSet = Set<Int>()
    
    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 { 
            factorSet.insert(i)
            factorSet.insert(n / i)
        }
    }
    
    return factorSet.sorted()
}