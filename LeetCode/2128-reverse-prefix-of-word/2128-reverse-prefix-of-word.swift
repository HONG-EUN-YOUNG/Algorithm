class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var result = ""

        guard !word.isEmpty else {
            return result
        }

        var idx = word.firstIndex(of: ch)

        guard idx != nil else {
            return word
        }

        idx = word.index(after: idx!)

        result = String(word.prefix(upTo: idx!))
        result = String(result.reversed())
        result += word.suffix(from: idx!)

        return result
    }
}