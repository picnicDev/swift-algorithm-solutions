import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var terminated: [Process] = []
    var processes: [Process] = priorities.enumerated().map { (i, priority) in
        if i == location { return .init(name: "MyProgress", priority: priority) }
        else { return .init(name: "", priority: priority) }
    }
    var queue = Queue<Process>()
    
    processes.forEach { queue.enqueue($0) }
    
    while !queue.isEmpty {
        let output = queue.dequeue()!
        let maxPriority = queue.content.map { $0.priority }.max() ?? 0
        
        if output.priority < maxPriority {
            queue.enqueue(output)
        } else {
            terminated.append(output)
            
            if output.name == "MyProgress" { break }
        }
    }
    
    return terminated.count
}

struct Process {
    let name: String
    let priority: Int 
}

struct Queue<T> {
    private var stack: [T] = []
    var front = 0
    
    mutating func enqueue(_ e: T) {
        stack.append(e)
    }
    
    mutating func dequeue() -> T? {
        if front >= stack.count { return nil }
        let output = stack[front]
        front += 1
        return output
    }
    
    var isEmpty: Bool {
        return front >= stack.count ? true : false
    }
    
    var content: [T] {
        return Array(stack[front...])
    }
}