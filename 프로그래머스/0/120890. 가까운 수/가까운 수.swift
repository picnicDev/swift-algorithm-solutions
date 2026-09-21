import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var diff = 99
    var filtered = [Int]()
    
    array.forEach {
        let currentDiff = abs($0 - n)
        if currentDiff < diff {
            filtered = []
            filtered.append($0)
            diff = currentDiff
        } else if currentDiff == diff {
            filtered.append($0)
        }
    }
    
    return filtered.min()!
}