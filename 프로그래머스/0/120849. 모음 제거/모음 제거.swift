import Foundation

func solution(_ my_string:String) -> String {
    var myString = my_string
    ["a", "e", "i", "o", "u"].forEach {
        myString = myString.replacingOccurrences(of: $0, with: "")
    }
    
    return myString
}