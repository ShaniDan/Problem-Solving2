//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/challenges/binary-search-tree-lowest-common-ancestor/problem
// TreeNode object needs to be class because recursive refrence doesn't work directly with structs because struct is a value type.
// Why it doesn't work with struct?'

//struct TreeNode2 {
//    var val: Int
//    var left: TreeNode2?
//    var right: TreeNode2?
//}

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(_ val: Int) {
        self.val = val
        //left needs to be set to nil so that it doesn't have any value initially?
        self.left = nil
        self.right = nil
    }
}

let root = TreeNode(3)
root.left = TreeNode(5)
root.right = TreeNode(1)
root.left?.left = TreeNode(6)
root.left?.right = TreeNode(2)

//func lowestCommonAncestor() -> TreeNode? {
//    
//}
