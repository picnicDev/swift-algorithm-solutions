import Foundation

func solution(_ numbers:String) -> Int64 {
    enum Numbers: String, CaseIterable {
        case zero, one, two, three, four, five, six, seven, eight, nine
        
        var numString: String {
            switch self {
                case .zero: return "0"
                case .one: return "1"
                case .two: return "2"
                case .three: return "3"
                case .four: return "4"
                case .five: return "5"
                case .six: return "6"
                case .seven: return "7"
                case .eight: return "8"
                case .nine: return "9"
            }
        }
    }
    
    var numbers = numbers
    
    for numStr in Numbers.allCases {
        numbers = numbers.replacingOccurrences(of: numStr.rawValue, with: numStr.numString)
    }
    
    return Int64(numbers)!
}