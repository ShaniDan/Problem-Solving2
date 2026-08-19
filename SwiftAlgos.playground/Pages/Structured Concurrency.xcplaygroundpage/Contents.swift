//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Structured concurrency organizes async work into a task tree - every child task has a parent, and the parent automatically waits for all children to complete (or cancel them). This prevents "fire and forget" leaks where orphaned tasks consume resources indefinitely.
 */

// Run a dynamic number of tasks in parallel:
func fetchAllScores(ids: [Int]) async -> [Int] {
    await withTaskGroup(of: Int.self) { group in
        for id in ids {
            group.addTask {
                return id * 10
            }
        }
        var results: [Int] = []
        for await result in group {
            results.append(result)
        }
        return results
    }
}
//Task Cancellation
func longRunningWork() async {
    for i in 0..<100 {
        guard !Task.isCancelled else {
            print("Cancelled at \(i)")
            return
        }
    }
}

/*
 Create an async function `doubleAll` that takes [1, 2, 3, 4, 5] and uses withTaskGroup to double each number in parallel. Return the sorted results and print them.
 */

func doubleAll(nums: [Int]) async -> [Int] {
    await withTaskGroup(of: Int.self) { group in
        for num in nums {
            group.addTask {
                num * 2
            }
        }
        var results: [Int] = []
        for await result in group {
            results.append(result)
        }
        return results.sorted()
    }
}

Task {
    let reslut2 = await doubleAll(nums: [1, 2, 3, 4, 5])
    print(reslut2)
}
