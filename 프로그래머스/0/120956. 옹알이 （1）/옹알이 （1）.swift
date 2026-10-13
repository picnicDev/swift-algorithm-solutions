import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    
    let filtered = babbling.map { babble in
        var babble = babble
        words.forEach {
            babble = babble.replacingOccurrences(of: $0, with: "+")
        }
        return Set(Array(babble))
    }
    
    return filtered.count(where: { $0 == ["+"] })
}