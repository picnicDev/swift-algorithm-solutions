import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    let bin1 = Array(Array(bin1).reversed())
    let bin2 = Array(Array(bin2).reversed())
    var result: [Character] = []
    var hasUpper = false
    
    for i in 0..<max(bin1.count, bin2.count) {
        let longer: [Character] = bin1.count == bin2.count ? [] : (bin1.count > bin2.count ? bin1 : bin2)
        if i < bin1.count && i < bin2.count {
            if bin1[i] == "1" && bin2[i] == "1" {
                result.append(hasUpper ? "1" : "0")
                hasUpper = true
            } else if bin1[i] == "0" && bin2[i] == "0" {
                result.append(hasUpper ? "1" : "0")
                hasUpper = false
            } else {
                result.append(hasUpper ? "0" : "1")
            }
        } else {
            if longer[i] == "1" {
                result.append(hasUpper ? "0" : "1")
            } else {
                result.append(hasUpper ? "1" : "0")
                hasUpper = false
            }
        } 
    }
    
    if hasUpper { result.append("1") }
    
    return String(result.reversed())
}