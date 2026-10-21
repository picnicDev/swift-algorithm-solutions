import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let answerOne = [1, 2, 3, 4, 5]
    let answerTwo = [2, 1, 2, 3, 2, 4, 2, 5]
    let answerThree = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var answerCount = [0, 0, 0]
    var index = [0, 0, 0]
    var result: [Int] = []
    
    for answer in answers {
        if answer == answerOne[index[0]] { answerCount[0] += 1 }
        if answer == answerTwo[index[1]] { answerCount[1] += 1 }
        if answer == answerThree[index[2]] { answerCount[2] += 1 }
        index[0] = (index[0] + 1) % answerOne.count
        index[1] = (index[1] + 1) % answerTwo.count
        index[2] = (index[2] + 1) % answerThree.count
    }

    let max = answerCount.max()
    for (i, e) in answerCount.enumerated() {
        if e == max { result.append(i+1) }
    }
    
    return result
}