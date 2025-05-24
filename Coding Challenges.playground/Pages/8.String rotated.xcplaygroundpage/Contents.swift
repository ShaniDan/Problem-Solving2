//: [Previous](@previous)

/*
Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
Sample input and output
    The string “abcde” and “eabcd” should return true.
    The string “abcde” and “cdeab” should return true.
    The string “abcde” and “abced” should return false; this is not a string rotation.
    The string “abc” and “a” should return false; this is not a string rotation.
*/

func challenge8a(string1: String, string2: String) -> Bool {
    
    var string1 = string1
    var tempChar = [Character]()
    
    // loop over string1
    for i in string1 {
        // store the last character in string1 in tempChar
         let lastChar = string1.removeLast()
        
            // add the character that is in tempChar to the front of the string1
            string1 = String(lastChar) + string1
        
        // check if the string1 and string2 are the same and if yes return true
        if string1 == string2 {
            return true
        }
    }
    
    return false
}

print(challenge8a(string1: "abcde", string2: "cdeab"))

