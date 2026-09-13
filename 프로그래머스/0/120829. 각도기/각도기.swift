import Foundation

func solution(_ angle:Int) -> Int {
    switch angle {
        case 180: 
        return 4
        case 91...:
        return 3
        case 90: 
        return 2
        case 1...:
        return 1
        default:
        return 0
    }
}