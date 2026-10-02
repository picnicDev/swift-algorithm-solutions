import Foundation

func solution(_ dots:[[Int]]) -> Int {
    let width = dots.max(by: { $0[0] < $1[0] })![0] - dots.min(by: { $0[0] < $1[0] })![0]
    let height = dots.max(by: { $0[1] < $1[1] })![1] - dots.min(by: { $0[1] < $1[1] })![1]
    
    return width * height
}