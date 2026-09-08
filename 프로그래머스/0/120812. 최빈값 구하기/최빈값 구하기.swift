import Foundation

func solution(_ array:[Int]) -> Int {
    var arr = Array(repeating: 0, count: 1000)
    
    for i in array {
        arr[i] += 1
    }
    
    let max = arr.max()!
    
    if arr.filter { $0 == max }.count == 1 {
        return arr.firstIndex(of: max)!
    }
    return -1
}