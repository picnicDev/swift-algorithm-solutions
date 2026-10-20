import Foundation

func solution(_ sizes:[[Int]]) -> Int {    
    let sizes = sizes.map {
        [max($0[0], $0[1]), min($0[0], $0[1])]
    }
    
    let width = sizes.map { $0[0] }.max()!
    let height = sizes.map { $0[1] }.max()!
    
    return width * height
}