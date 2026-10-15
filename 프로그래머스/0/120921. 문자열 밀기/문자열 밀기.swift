import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var a = Array(A)
    var result = 0
    
    for _ in a {
        if String(a) == B {
            return result
        }
        let last = a.removeLast()
        a.insert(last, at: 0)
        result += 1
    }
    
    return -1
}