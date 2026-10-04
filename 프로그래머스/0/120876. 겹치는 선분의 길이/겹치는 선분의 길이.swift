import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var result = 0
    var beforeLineStatus: [Bool] = Array(repeating: false, count: lines.count)
    var currentLineStatus: [Bool] = Array(repeating: false, count: lines.count)
    let min = lines.map { $0[0] }.min()!
    let max = lines.map { $0[1] }.max()!
    
    for point in min...max {
        var localOverlap = Array(repeating: false, count: lines.count)
        
        for (index, line) in lines.enumerated() {
            if (line[0]...line[1]).contains(point) { 
                currentLineStatus[index] = true
            } else {
                currentLineStatus[index] = false
            }
        }
        
        for (i, (before, current)) in zip(beforeLineStatus, currentLineStatus).enumerated() {
            if before && current { localOverlap[i] = true }
        }
        
        if localOverlap.filter { $0 }.count > 1 { result += 1 }

        beforeLineStatus = currentLineStatus
    }
    
    return result
}