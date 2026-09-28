import Foundation

func solution(_ array:[Int]) -> [Int] {
    var max = array[0]
    var maxIndex = 0
    
    for (i, e) in array.enumerated() { 
        if e > max {
            max = e
            maxIndex = i
        }
    }
    
    return [max, maxIndex]
}