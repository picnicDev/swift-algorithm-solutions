import Foundation

func solution(_ array:[Int], _ height:Int) -> Int {
    return array.count(where: { $0 > height })
}