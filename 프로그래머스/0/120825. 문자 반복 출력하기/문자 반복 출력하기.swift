import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return Array(my_string).map { String(repeating: $0, count: n) }.joined()
}