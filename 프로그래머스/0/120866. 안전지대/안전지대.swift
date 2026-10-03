import Foundation

func solution(_ board:[[Int]]) -> Int {
    typealias Pos = (x: Int, y: Int)
    var board = board
    
    for i in 0..<board[0].count {
        for j in 0..<board.count {
            if board[i][j] == 1 {
                setDangerousArea(from: (i, j))
            }
        }
    }
    
    return board.map { $0.count { $0 == 0 } }.reduce(0,+)
    
    func setDangerousArea(from pos: Pos) {
        let directions: [Pos] = [
            (-1, -1), (0, -1), (1, -1),
            (-1, 0), (1, 0),
            (-1, 1), (0, 1), (1, 1)
        ]
        
        for move in directions {
            let index: Pos = (pos.x + move.x, pos.y + move.y)
            
            if checkOutOfRange(of: index), board[index.x][index.y] != 1 {
                board[index.x][index.y] = 2
            }
        }
    }
    
    func checkOutOfRange(of pos: Pos) -> Bool {
        return (0..<board[0].count).contains(pos.x) && (0..<board.count).contains(pos.y)
    }
}