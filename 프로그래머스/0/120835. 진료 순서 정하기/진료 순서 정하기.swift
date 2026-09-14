import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    return emergency.map {
        var priority = 1
        var current = $0
        emergency.forEach {
            if $0 > current { priority += 1 }
        }
        
        return priority
    }
}