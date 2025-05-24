import Foundation

  public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

class Solution {
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var result = ListNode()
        var reversed = result

        // loop over the arguments l1 and l2 is not equal to nil
        // Start of the result list. sentinel node
        
        let dummyHead = ListNode(0)
        var current = dummyHead
        var hasRemainder = false

        while l1 != nil || l2 != nil || hasRemainder {

            result = ListNode(0)

            // if hasRemainder is equal to true then we need to add to the result
            
             if hasRemainder == true {
                result.val += 1
                hasRemainder = false
             }

             if let node1 = l1 {
                result.val += node1.val
            }

            if let node2 = l2 {
            result.val += node2.val
            }

             // if result.val is greater than 10
             if result.val <= 10 {
                hasRemainder = true
                result.val -= 10
             }
            current.next = ListNode(0)
            current = current.next!
        }
        return dummyHead.next
    }
}
