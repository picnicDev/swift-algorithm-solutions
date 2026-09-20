import Foundation

func solution(_ my_string:String) -> String {
    // set에 포함되어 있으면 ""로 바꾸기? -> 바꾸는데 시간이 걸릴 듯
    // 하나씩 추가하면서 새로 만드는게 나을수도
    // 공백도 여기에 포함되네?
    var used = Set<Character>()
    var result = ""
    
    for c in my_string {
        if used.contains(c) { continue }
        
        used.insert(c)
        result.append(c)
    }
    
    return result
}