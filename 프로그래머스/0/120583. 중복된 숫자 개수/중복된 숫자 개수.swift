import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    return array.count(where: { $0 == n })
}