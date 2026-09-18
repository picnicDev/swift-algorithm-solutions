import Foundation

func solution(_ n:Int) -> [Int] {
    var result = [Int]()
    var n = n
    for i in 2...n {
        if n % i == 0 {
            result.append(i)
            while n % i == 0 {
                n /= i
            }
        }
    }
    
    return result
}