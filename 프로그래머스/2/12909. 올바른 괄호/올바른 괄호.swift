import Foundation

func solution(_ s:String) -> Bool
{
    var stack: [Character] = []
    
    for c in s {
        if stack.isEmpty && c == ")" { return false }
        
        if c == "(" { stack.append(c) }
        else { stack.removeLast() }
    }

    return stack.isEmpty
}