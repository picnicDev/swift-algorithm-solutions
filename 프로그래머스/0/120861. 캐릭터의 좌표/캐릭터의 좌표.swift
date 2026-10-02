import Foundation

typealias Position = [Int]

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var pos: Position = [0, 0]
    
    for input in keyinput {
        pos = move(pos: pos, to: input)
    }
    
    return pos
    
    func move(pos: Position, to direction: String) -> Position {
    var newPos: Position = pos
    switch direction {
        case "left": newPos[0] -= 1
        case "right": newPos[0] += 1
        case "up": newPos[1] += 1
        case "down": newPos[1] -= 1
        default: return pos
    }
    
    if !(-board[0]/2...board[0]/2).contains(newPos[0]) || !(-board[1]/2...board[1]/2).contains(newPos[1]) {
        return pos
    }
    
    return newPos
    }
}

