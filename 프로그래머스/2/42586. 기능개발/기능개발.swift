import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var startIndexOfWork = 0
    var progresses = progresses
    var result: [Int] = []
    
    while startIndexOfWork < progresses.count {
        var done = 0
        let needForDone = 100 - progresses[startIndexOfWork]
        let timeForDone = (needForDone % speeds[startIndexOfWork]) == 0 ? needForDone / speeds[startIndexOfWork] : needForDone / speeds[startIndexOfWork] + 1
        
        for index in startIndexOfWork..<progresses.count {
            progresses[index] += timeForDone * speeds[index]
        }
        
        while startIndexOfWork < progresses.count && progresses[startIndexOfWork] >= 100 {
            done += 1
            startIndexOfWork += 1
        }
        
        if done > 0 { result.append(done) }
    }
    
    return result
}