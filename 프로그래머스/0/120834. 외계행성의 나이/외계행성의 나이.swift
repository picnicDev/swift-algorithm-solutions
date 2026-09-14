import Foundation

func solution(_ age:Int) -> String {
    let ageNumbers: [Int] = Array(String(age)).map { Int(String($0))! }
    let ageCharacters: [Character] = ageNumbers.map { Character(UnicodeScalar(97 + $0)!) }
    return String(ageCharacters)
}