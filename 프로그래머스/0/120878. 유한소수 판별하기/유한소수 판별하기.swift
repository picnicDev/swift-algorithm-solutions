import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 { return a }
        return gcd(b, a % b)
    }
    
    var b = b / (gcd(a, b))
    
    while b % 2 == 0{
        b /= 2
    }
    while b % 5 == 0 {
        b /= 5
    }
    
    if b == 1  { return 1 }
    
    return 2
}