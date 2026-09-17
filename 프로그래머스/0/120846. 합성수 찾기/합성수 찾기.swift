import Foundation

func solution(_ n:Int) -> Int {
    guard n > 3 else { return 0 }
    
    var net = Array(repeating: true, count: n+1)
    net[0] = false
    
    
    for i in 2...Int(sqrt(Double(n))) {
        for j in stride(from: i * i, through: n, by: i) {
            net[j] = false
        }
    }
    
    return net.filter { !$0 }.count - 1
}