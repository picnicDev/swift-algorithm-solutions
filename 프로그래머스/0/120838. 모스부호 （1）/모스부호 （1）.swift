import Foundation

func solution(_ letter:String) -> String {
    var morse: [String: String] = [:] 
    _ = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."].enumerated().map { (i, c) in 
    morse[String(c)] = String(UnicodeScalar(97+i)!)
    }
    
    return letter.split(separator: " ").map { morse[String($0)]! }.joined()
}