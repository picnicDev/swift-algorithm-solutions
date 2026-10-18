import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0 
    
    func dfs(index: Int, currentValue: Int) {
        if index == numbers.count - 1 {
            if currentValue + numbers[index] == target { result += 1 }
            else if currentValue - numbers[index] == target { result += 1 }
            else { return }
        } else {
            dfs(index: index+1, currentValue: currentValue + numbers[index])
            dfs(index: index+1, currentValue: currentValue - numbers[index])
            return
        }
    }
    
    dfs(index: 0, currentValue: 0)
    
    return result
}

