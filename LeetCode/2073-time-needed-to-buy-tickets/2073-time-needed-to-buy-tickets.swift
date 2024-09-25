class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var tk = tickets
        var time = 0;
        var flag = k

        while tk[k] > 0 {
            for i in 0...tk.count-1 {
                if tk[i] != 0 {
                    tk[i] -= 1
                    time += 1
                }

                if tk[k] == 0 {
                    break
                }
            }
        }

        return time
    }
}