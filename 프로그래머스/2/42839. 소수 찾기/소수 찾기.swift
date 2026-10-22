import Foundation

func solution(_ numbers:String) -> Int {
    let min = Array(numbers).lazy.map { Int(String($0))! }.min()!
    let max = Int(Array(numbers).lazy.map { Int(String($0))! }.sorted(by: >).map { String($0) }.joined())!
    var numbersComponent = Array(repeating: 0, count: 10)
    var result = 0
    
    numbers.forEach {
        numbersComponent[Int(String($0))!] += 1
    }
    
    for n in min...max {
        if isComponent(n, of: numbersComponent) {
            if isPrime(n) { result += 1 }
        }
    }
    
    return result
}

func isPrime(_ n: Int) -> Bool {
    if n <= 1 { return false }
    if n < 4 { return true }
    
    for i in 2...Int(sqrt(Double(n))) {
        if n % i == 0 { return false }
    }
    
    return true
}

func isComponent(_ n: Int, of component: [Int]) -> Bool {
    var nComponent = Array(repeating: 0, count: 10)
    
    String(n).forEach {
        nComponent[Int(String($0))!] += 1
    }
    
    for (n1, n2) in zip(nComponent, component) {
        if n1 > n2 { return false }
    }
    
    return true
}

