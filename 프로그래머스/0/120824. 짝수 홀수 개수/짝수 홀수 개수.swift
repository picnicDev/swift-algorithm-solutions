import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = [0, 0]
    _ = num_list.map { result[$0 % 2] += 1 }    
    return result
}