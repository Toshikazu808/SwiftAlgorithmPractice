import UIKit

var sentence: String = "madam anna kayak notapalindrome anna Civic racecar Anna civic"

func allPalindromeCounts(senctence: String) -> [String:Int] {
   var counts = [String:Int]()
   let words: [String] = sentence.components(separatedBy: " ")
   print(words)
   words.forEach { word in
      if isPalindrome(word: word) {
         let count = counts[word] ?? 0
         counts[word] = count + 1
      }
   }
   return counts
}

func isPalindrome(word: String) -> Bool {
   let characters = Array(word.lowercased())
   var currentIndex = 0
   while currentIndex < characters.count / 2 {
      if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
         return false
      }
      currentIndex += 1
   }
   return true
}


let counts = allPalindromeCounts(senctence: sentence)
print("Counts: \(counts)")
