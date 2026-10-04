import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var dots = dots
    var indexSet = [(0, 1, 2, 3), (0, 2, 1, 3), (0, 3, 1, 2)]
    
    for i in indexSet {
        let (p1, p2, p3, p4) = (dots[i.0], dots[i.1], dots[i.2], dots[i.3])
            
        if (p1[0] == p2[0]) && (p3[0] == p4[0]) { return 1 }
        if (p1[1] == p2[1]) && (p3[1] == p4[1]) { return 1 }
            
        let inclination1 = Double(p1[1] - p2[1]) / Double(p1[0] - p2[0])
        let inclination2 = Double(p3[1] - p4[1]) / Double(p3[0] - p4[0])
            
        if inclination1 == inclination2 { return 1 } 
    }
    
    return 0
}