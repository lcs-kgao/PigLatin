//
//  main.swift
//  PigLatin
//

import Foundation

// INPUT
// Global variable, tracks how many words we can expect to have to translate to Pig Latin
var countOfExpectedWordsToTranslate = 3

// Write a loop to actually collect the expected count of words to be translated from user
// e.g.: write the rest of the INPUT section
while true {
    
    //Prompt
    print("How many words will be provided?")
    
    //Wait for input, check for nil
    guard let givenInput = readLine() else{
        continue
    }
    //Check for integer
    guard let givenInteger = Int(givenInput) else{
        continue
    }
    //Check for range
    if givenInteger <= 0 || givenInteger > 10 {
        continue
    }
    //Assign the value to the global variable
    countOfExpectedWordsToTranslate = givenInteger
    break
}


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

var inputWord = ""

// Collect the words to be translated
for counter in 1...countOfExpectedWordsToTranslate {
    
    // Ask user for the word to be translated
    print("Enter word #\(counter):")
    
    // Create a variable that has the translated word
    var wordBeforeVowel = ""
    var translatedWord = ""
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
        
        
    }
    inputWord = givenInput
    
    //Create two counts for counting the letters
    var countBefore = 0
    var countLetters = 0
    // Replace this logic with the correct logic

    for letters in inputWord {
        switch letters{
            //When the letter meets vowels, exit the code
        case "A","E","I","O","U":
            break
            //Copy everything else before exit the code
        default:
            wordBeforeVowel += String(letters)
            //Count the number of letters before breaking the code.
            countBefore += 1
            continue
        }
        //Break the the code
        break
  }
    for letter in inputWord {
        //Run the loop and accumulate the number of letters
        countLetters += 1
        //When the count of letters in higher than the count of letters before the vowel, start to assign the rest of the letters after the vowel.
        if countBefore < countLetters{
            translatedWord += String(letter)
        } else {
            //If the code doesn't meet the condition, run it again.
            continue
        }
        
    }
    
//Add the letters together
    translatedWord += wordBeforeVowel
    translatedWord += "AY"
    print("In pig latin: \(translatedWord)")
    
}
