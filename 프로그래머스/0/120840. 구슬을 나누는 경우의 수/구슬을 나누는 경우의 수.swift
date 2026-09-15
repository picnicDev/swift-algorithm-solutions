import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    let r = min(share, balls - share)
    var result = 1

    if r == 0 { return 1 }
    for i in 1...r {
        result = result * (balls - r + i) / i
    }

    return result
}