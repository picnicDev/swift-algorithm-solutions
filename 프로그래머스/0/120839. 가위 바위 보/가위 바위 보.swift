import Foundation

func solution(_ rsp:String) -> String {
    let win = [
        "2": "0",
        "0": "5",
        "5": "2"
    ]
    
    return rsp.map { win[String($0)]! }.joined()
}