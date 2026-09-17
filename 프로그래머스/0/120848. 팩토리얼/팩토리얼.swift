import Foundation

func solution(_ n:Int) -> Int {
    var answer = 1
    for i in 1...10 {
        answer *= i
        if answer > n {
            return i - 1
        }
    }
    
    return 10
}