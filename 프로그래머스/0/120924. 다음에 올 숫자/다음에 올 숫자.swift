import Foundation

func solution(_ common:[Int]) -> Int {
    let lastIndex = common.count - 1
    let diff1 = common[lastIndex] - common[lastIndex-1]
    let diff2 = common[lastIndex-1] - common[lastIndex-2]
    
    if diff1 == diff2 {
        return common[lastIndex] + diff1
    } else {
        return common[lastIndex] * (common[lastIndex] / common[lastIndex-1])
    }
}