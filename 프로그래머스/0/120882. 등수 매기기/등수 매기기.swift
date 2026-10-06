import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    // 정렬을 해서 등수를 정한 뒤 다시 원래 위치로 돌아가게 할 수 있지 않을까?
    // 그럼 원래 위치를 기억할 배열을 만들어야 해.
    var regularIndices: [[Int]: Int] = [:]
    var ranks: [[Int]: Int] = [:]
    var answer = Array(repeating: 0, count: score.count)
    var rank: Int = 1
    
    for (index, item) in score.enumerated() {
        regularIndices[item] = index
    }
    
    let sorted: [[Int]] = score.sorted(by: { Double($0[0] + $0[1]) / 2.0 > Double($1[0] + $1[1]) / 2.0})
    
    for (index, item) in sorted.enumerated() {
        if index == 0 { 
            ranks[item] = rank
        } else {
            let currentAvg = Double(item[0] + item[1]) / 2
            let beforeAvg = Double(sorted[index-1][0] + sorted[index-1][1]) / 2
            ranks[item] = currentAvg == beforeAvg ? ranks[sorted[index-1]]! : rank
        }
        
        rank += 1
    }
    
    for (k, v) in ranks {
        let regualrIndex = regularIndices[k]!
        answer[regualrIndex] = v
    }
    
    return answer
}