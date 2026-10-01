import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result: [String] = []
    let strCharArr = Array(my_str)
    
    for i in stride(from: 0, to: strCharArr.count, by: n) {
        let lastSubArrayIndex = i + n >= strCharArr.count ? strCharArr.count - 1 : i + n - 1
        let subArray = strCharArr[i...lastSubArrayIndex]
        result.append(String(subArray))
    }
    
    return result
}