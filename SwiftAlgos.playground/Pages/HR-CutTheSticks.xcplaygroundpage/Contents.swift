//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func cutTheSticks(arr: [Int]) -> [Int] {
    var numberOfCuts = 0
    var result1 = [Int]()
    var smallest = arr.min()
    for num in arr {
        var result = num - (smallest ?? 0)
        if num == 0 {
//            arr.removeAll(where: 0)
        }
        print(result)
        numberOfCuts += 1
        result1.append(numberOfCuts)
    }
    return result1.sorted {$0 > $1}
}
print(cutTheSticks(arr: [5,4,4,2,2,8]))

func createCSVRow(_ values: [String]) -> String {
    var csv = ""
    for (index, value) in values.enumerated() {
        csv += "\"\(value)\""
        if index < values.count - 1 {
            csv += ","
        }
    }
    return csv
}
print(createCSVRow(["John Doe", "john@example.com", "iOS Developer"]))

struct GameRound {
    var playerScores: [String: Int] = [
        "Alice": 450,
        "Bob": 320,
        "Charlie": 500,
        "Diana": 480
    ]
    
    func analyzeScores() {
        let scores = Array(playerScores.values)
        
        let maxScore = max(scores[0], scores[1], scores[2], scores[3])
        let minScore = min(scores[0], scores[1], scores[2], scores[3])
        
        print("Max: \(maxScore), Min: \(minScore)")
        
        for (index, player) in playerScores.sorted(by: { $0.value > $1.value }).enumerated() {
            print("\(index + 1). \(player.key): \(player.value) points")
        }
    }
}

let round = GameRound()
round.analyzeScores()
