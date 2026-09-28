import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    var numString = String(num)
    let index = numString.firstIndex(of: Character(String(k)))
    
    if let index {
        return numString.distance(from: numString.startIndex, to: index) + 1
    } else {
        return -1
    }
}