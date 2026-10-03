import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    
    outFor: for word in dic.filter { $0.count == spell.count } {
        var sameCount = 0
        
        for c in spell {
            if word.contains(c) { sameCount += 1 }
            else { continue outFor }
        }
            
        if sameCount == spell.count { return 1 }
    }
    
    return 2
}