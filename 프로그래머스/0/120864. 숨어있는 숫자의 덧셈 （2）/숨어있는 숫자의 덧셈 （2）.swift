import Foundation

func solution(_ my_string:String) -> Int {
    return String(my_string.map {
        if $0.isNumber {
            return $0
        } else {
            return "+"
        }
    }).split(separator: "+")
    .map { Int(String($0))! }
    .reduce(0, +)
}