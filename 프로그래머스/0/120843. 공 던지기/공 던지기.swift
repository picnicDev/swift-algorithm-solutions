import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var currentIndex = 0
    
    if k == 1 { return numbers[currentIndex] }
    for i in 2...k {
        currentIndex = (currentIndex + 2) % numbers.count
    }
    
    return numbers[currentIndex]
}