func solution(_ s:String) -> String {
    let filtered = s.split(separator: " ").map { Int(String($0))! }.sorted()
    
    return "\(filtered[0]) \(filtered[filtered.count-1])"
}