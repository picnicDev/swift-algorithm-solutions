import Foundation

func solution(_ s:String) -> Int {
    var stack = [Int]()
    let inputs = s.split(separator: " ")
    
    inputs.forEach { 
        if $0 == "Z" { stack.removeLast() }
        else if $0 != "Z" { stack.append(Int($0)!) }
    }
    
    return stack.reduce(0,+)
}