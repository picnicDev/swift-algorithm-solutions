import Foundation

func solution(_ quiz:[String]) -> [String] {
    var answer: [String] = []
    
    for str in quiz {
        let components = str.split(separator: " ").map { String($0) }
        let lhs = Int(components[0])!
        let rhs = Int(components[2])!
        let oper = components[1]
        let result = Int(components[4])!
        
        if oper == "+" {
            answer.append(lhs + rhs == result ? "O" : "X")
        } else {
            answer.append(lhs - rhs == result ? "O" : "X")
        }
    }
    
    return answer
}