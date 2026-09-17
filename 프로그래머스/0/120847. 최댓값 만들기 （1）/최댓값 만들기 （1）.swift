import Foundation

func solution(_ numbers:[Int]) -> Int {
    return numbers.sorted(by: >)[0...1].reduce(1, *)
}