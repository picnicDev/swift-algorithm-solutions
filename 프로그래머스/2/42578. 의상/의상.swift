import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothesDic: [String: [String]] = [:]
    var itemNums: [Int] = []
    
    for item in clothes {
        clothesDic[item[1], default: []].append(item[0])
    }
    
    for (_, v) in clothesDic {
        itemNums.append(v.count + 1)
    }
    
    return itemNums.count == 1 ? itemNums[0] - 1 : itemNums.reduce(1,*) - 1
}