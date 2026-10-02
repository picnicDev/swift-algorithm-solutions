import Foundation

func solution(_ polynomial:String) -> String {
    let components = polynomial.split(separator: " ").map { String($0) }
    let xSum = components.filter { $0.contains("x") }.map { 
        if $0 == "x" { return 1 }
        else { return Int($0.replacingOccurrences(of: "x", with: ""))! }
    }.reduce(0,+)
    let numericSum = components.compactMap { Int($0) }.reduce(0,+)
    
    if numericSum == 0 {
        return xSum == 1 ? "x" : "\(xSum)x"
    } else if xSum == 0 {
        return "\(numericSum)"
    } else {
        return xSum == 1 ? "x + \(numericSum)" : "\(xSum)x + \(numericSum)"
    }
}