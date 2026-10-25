import Foundation

struct Cave: Hashable {
    let name: Int
    let need: [Int]
}

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var result = 0
    let unvisitedCaves: Set<Cave> = Set(
        dungeons.enumerated().map { (i, e) in
            return Cave(name: i, need: e)
        }
    )
    var advantures: [Int] = []

    for unvisitedCave in unvisitedCaves {
        print("Let's go to \(unvisitedCave.name)")
        advantures.append(explore(cave: unvisitedCave, 
                                      unvisitedCaves: unvisitedCaves, 
                                      currentTired: k, 
                                     exploreCount: 0)
                             )
    }
    
    return advantures.max() ?? 0
}

    func explore(cave: Cave, unvisitedCaves: Set<Cave>, currentTired: Int, exploreCount: Int) -> Int {
        if cave.need[0] > currentTired { return exploreCount }
        
        var unvisitedCaves = unvisitedCaves
        var currentTired = currentTired
        var exploreCount = exploreCount
        var advantures: [Int] = []
        unvisitedCaves.remove(cave)
        currentTired -= cave.need[1]
        exploreCount += 1
        
        for unvisitedCave in unvisitedCaves {
            advantures.append(explore(cave: unvisitedCave, 
                                      unvisitedCaves: unvisitedCaves, 
                                      currentTired: currentTired, 
                                     exploreCount: exploreCount)
                             )
        }
        
        return advantures.max() ?? exploreCount
    }