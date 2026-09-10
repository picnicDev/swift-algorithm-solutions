import Foundation

func solution(_ price:Int) -> Int {
    var sale = 0.0
    
    switch price {
        case 500_000...:
        sale = 0.2
        case 300_000...:
        sale = 0.1
        case 100_000...:
        sale = 0.05
        default:
        sale = 0.0
    }
    
    return Int(Double(price) - Double(price) * sale)
}