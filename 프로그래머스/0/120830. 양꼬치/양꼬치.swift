import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let bonus = n / 10
    return n * 12000 + (k-bonus) * 2000
}