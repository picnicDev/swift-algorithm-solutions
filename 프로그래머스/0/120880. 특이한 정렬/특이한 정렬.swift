import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted(by: { 
        let distance = abs($0 - n)
        let distance2 = abs($1 - n)
        
        if distance == distance2 { return $0 > $1 }
        else { return distance < distance2 }
    })
}