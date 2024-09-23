class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var result = prices

        for i in 0...result.count-2 {
            for j in i+1...prices.count-1 {
                if result[i] >= prices[j] {
                    result[i] -= prices[j]
                    break;
                }
            }
        }

        return result
    }
}