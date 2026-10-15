import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let pivot = total / num
    let min = num % 2 == 0 ? (pivot - num / 2 + 1) : (pivot - num / 2)
    let max = pivot + num / 2
    let nums = Array(min...max)
    
    return nums
}