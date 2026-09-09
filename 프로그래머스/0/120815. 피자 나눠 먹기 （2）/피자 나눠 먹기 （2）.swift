import Foundation

func solution(_ n:Int) -> Int {
    func gcd(_ a: Int, _ b : Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }
    
    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(max(a, b), min(a, b))
    }
    
    return lcm(6, n) / 6
}