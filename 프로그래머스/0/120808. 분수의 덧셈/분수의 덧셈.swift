import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    func gcd(_ a: Int, _ b: Int) -> Int  {
        if b == 0 { return a }
        
        return gcd(b, a % b)
    }
    
    let numer3 = numer1 * denom2 + numer2 * denom1
    let denom3 = denom1 * denom2
    let gcd = gcd(max(numer3, denom3), min(numer3, denom3))
    
    return [numer3 / gcd, denom3 / gcd]
}