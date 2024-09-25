class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        // var tk = tickets
        // var time = 0
        // var flag = k

        // while tk[k] > 0 {
        //     for i in 0...tk.count-1 {
        //         if tk[i] != 0 {
        //             tk[i] -= 1
        //             time += 1
        //         }

        //         // k번째 사람이 티켓을 다 구매했으면 종료
        //         // 이거 없으면 testcase는 성공하지만 다른 케이스에서 에러생김
        //         if tk[k] == 0 {
        //             break
        //         }
        //     }
        // }

        // O(n) 시간복잡도
        var tk = tickets[k]
        var time = 0

        for i in 0...tickets.count-1 {
            if tickets[i] >= tk {
                time += tk

                if k < i {
                    time -= 1
                }
            } else {
                time += tickets[i]
            }
        }

        return time
    }
}