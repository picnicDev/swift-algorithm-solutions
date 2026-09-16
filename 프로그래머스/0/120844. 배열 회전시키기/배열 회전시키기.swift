import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    if direction == "left" { 
        return numbers[1...] + [numbers[0]]
    } else {
        return [numbers[numbers.count-1]] + numbers[0..<numbers.count-1]
    }
}