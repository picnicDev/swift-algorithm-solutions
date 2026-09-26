import Foundation

func solution(_ s:String) -> String {
    var alphabetCountArr = Array(repeating: 0, count: 26)
    
    for c in s {
        let index = Int(c.asciiValue! - 97)
        alphabetCountArr[index] += 1
    }
    
    let result = alphabetCountArr.enumerated().compactMap { 
        if $0.1 == 1 { return $0.0 }
        return nil
    }.map {
        String(UnicodeScalar(97+$0)!)
    }.joined()
    
    return result
}