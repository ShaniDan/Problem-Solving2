import UIKit

var greeting = "Hello, playground"

/*
 Given the head of a singly linked list, return true if it is a palindrome or false otherwise.

 Example 1:
 Input: head = [1,2,2,1]
 Output: true
 Example 2:
 Input: head = [1,2]
 Output: false

 Constraints:

 The number of nodes in the list is in the range [1, 105].
 0 <= Node.val <= 9
 */


// Define a node

public class ListNode<T> {
    
    var value: T
    var next: ListNode?
    var previous: ListNode?
    
    init(value: T, next: ListNode? = nil, previous: ListNode? = nil) {
        self.value = value
        self.next = next
        self.previous = previous
    }
    
}

// Define a singly linked list

final class SinglyLinkedList<T> {
    var head: ListNode<T>? = nil // nil means head is empty
    
    var isEmpty: Bool {
        return head == nil
    }
}

//let list = SinglyLinkedList<String>()
//print(list.head ?? "test")

// name of the extension should be the same as the defined class
extension SinglyLinkedList {
    func append(_ value: T) {
        let newNode = ListNode(value: value)
        
        if let lastNode = head {
            // traverse to the end
            // why do I need to traverse to the end?
            var current = lastNode
            //
            while let nextNode = current.next {
                current = nextNode
            }
            current.next = newNode
        } else {
            // empty list -> new node becomes head
            head = newNode
        }
    }
}

let list = SinglyLinkedList<Int>()

let input = [1, 2, 2, 1]
for value in input {
    list.append(value)
    
}

//class Solution {
//    func isPalindrome(_ head: SinglyLinkedList?) -> Bool {
//        
//    }
//}
