import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var maxTime: Int64 = Int64(times.max()!) * Int64(n)
    var minTime: Int64 = 1
    let times = times.map { Int64($0) }
    
    while minTime < maxTime {
        let midTime = (maxTime + minTime) / 2
        var throughout: Int64 = times.map { midTime / $0 }.reduce(0,+)
        if throughout >= n { maxTime = midTime }
        else { minTime = midTime + 1 }
    }
   
    return minTime
}