import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result: [Int] = []
    let size = brown + yellow
    var line1 = 3
    
    while true {
        guard size % line1 == 0 else {
            line1 += 1 
            continue
        }
        
        let line2 = size / line1
        
        if (line1 - 2) * (line2 - 2) == yellow {
            return [line1, line2].sorted(by: >)
        } else { 
            line1 += 1
        }
    }
}