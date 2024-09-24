/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        
        // while true {
        //     guard ((fast?.next?.next) != nil) else {
        //         return slow
        //     }
        //     slow = slow?.next
        //     fast = fast?.next?.next
        // }

        while let nextFast = fast?.next {
            fast = nextFast.next
            slow = slow?.next
        }

        return slow
    }
}