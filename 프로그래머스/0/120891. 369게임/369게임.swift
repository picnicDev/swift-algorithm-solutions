import Foundation

func solution(_ order:Int) -> Int {
    return String(order).count(where: { $0 == "3" || $0 == "6" || $0 == "9" })
}