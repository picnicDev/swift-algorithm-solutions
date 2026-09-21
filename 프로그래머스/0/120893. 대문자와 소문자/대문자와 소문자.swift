import Foundation

func solution(_ my_string:String) -> String {
    return my_string.map { 
        if $0.isUppercase { $0.lowercased() }
        else { $0.uppercased() }
    }.joined()
}