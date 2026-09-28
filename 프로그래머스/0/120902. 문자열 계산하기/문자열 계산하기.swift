import Foundation

func solution(_ my_string:String) -> Int {
    enum Operator {
        case plus, minus
    }
    var myStringArr = my_string.split(separator: " ")
    var result = 0
    var currentOperator: Operator = .plus
    
    myStringArr.forEach {
        if let n = Int($0) {
            if currentOperator == .plus {
                result += n
            } else {
                result -= n
            }
        } else {
            currentOperator = $0 == "+" ? .plus : .minus
        }
    }
    
    return result
}