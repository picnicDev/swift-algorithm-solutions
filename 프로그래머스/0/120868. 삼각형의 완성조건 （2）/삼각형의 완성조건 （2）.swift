import Foundation

func solution(_ sides:[Int]) -> Int {
    var result = 0
    let large = max(sides[0], sides[1])
    let small = min(sides[0], sides[1])
    
    for line in 1..<large {
        if line + small > large { result += 1 }
    }
    
    (large..<(small + large)).forEach { _ in
        result += 1
    }
    
    return result
}