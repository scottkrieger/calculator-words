# permutations of characters in strings from 1 to 10 characters in length
# on click save to firebase

fs = require 'fs'
_ = require 'underscore'

chars = "ODIZEhSPLBG"
chars = chars.toLowerCase()
console.log chars
process.chdir('../data')

generateWordCandidatesFile = (strLength,chars)->
  
  num = 6
  # lyrics = while num -= 1
  wordCandidates = []
  num for num in [strLength..1]
  wordCandidates.push(char.toString() + secondChar.toString() + thirdChar.toString()) for thirdChar in chars for secondChar in chars for char in chars
  console.log "3 chars"
  console.log wordCandidates.length
  fs.readFile  'common3letterwords.txt', 'utf8', (error, data)->
    
    common3LetterWords = data.split ' '

    console.log 'Common 3 letter words'
    console.log common3LetterWords.length

    commonWordCandidates = _.intersection common3LetterWords, wordCandidates
    console.log 'Common word candidates'
    console.log commonWordCandidates.length
    fs.writeFile  'common3LetterWordCandidates.json', JSON.stringify(commonWordCandidates), (err)->
      if (err) 
        throw err



# wordCandidates.push char for char in chars 
# console.log "1 char"
# console.log wordCandidates.length


fs.readFile  'common2letterwords.txt', 'utf8', (error, data)->
  wordCandidates2 = []
  wordCandidates2.push(char.toString() + secondChar.toString()) for secondChar in chars for char in chars
  console.log "2 chars"
  console.log wordCandidates2.length

  common2LetterWords = data.split ' '

  console.log 'Common 2 letter words'
  console.log common2LetterWords.length

  commonWordCandidates2 = _.intersection wordCandidates2, common2LetterWords
  console.log 'Common word candidates'
  console.log commonWordCandidates2.length
  
  fs.writeFile  'common2LetterWordCandidates.json', JSON.stringify(commonWordCandidates2), (err)->
    if (err) 
      throw err



# fs.readFile  'common3letterwords.txt', 'utf8', (error, data)->
#   wordCandidates3 = []
#   wordCandidates3.push(char.toString() + secondChar.toString() + thirdChar.toString()) for thirdChar in chars for secondChar in chars for char in chars
#   console.log "3 chars"
#   console.log wordCandidates3.length

#   common3LetterWords = data.split ' '

#   console.log 'Common 3 letter words'
#   console.log common3LetterWords.length

#   commonWordCandidates3 = _.intersection common3LetterWords, wordCandidates3
#   console.log 'Common word candidates'
#   console.log commonWordCandidates3.length
#   fs.writeFile 'common3LetterWordCandidates.json', JSON.stringify(commonWordCandidates3), (err)->
#     if (err) 
#       throw err


# fs.readFile  'common4letterwords.txt', 'utf8', (error, data)->
#   wordCandidates4 = []
#   wordCandidates4.push(char.toString() + secondChar.toString() + thirdChar.toString() + fourthChar.toString()) for fourthChar in chars for thirdChar in chars for secondChar in chars for char in chars
#   console.log "4 chars"
#   console.log wordCandidates4.length
  
#   common4LetterWords = data.split ' '

#   console.log 'Common 4 letter words'
#   console.log common4LetterWords.length

#   commonWordCandidates4 = _.intersection common4LetterWords, wordCandidates4
#   console.log 'Common word candidates'
#   console.log commonWordCandidates4.length
#   fs.writeFile  'common4LetterWordCandidates.json', JSON.stringify(commonWordCandidates4), (err)->
#     if (err) 
#       throw err



fs.readFile  'common5letterwords.txt', 'utf8', (error, data)->
  wordCandidates5 = []
  wordCandidates5.push(char.toString() + secondChar.toString() + thirdChar.toString() + fourthChar.toString() + fifthChar.toString()) for fifthChar in chars for fourthChar in chars for thirdChar in chars for secondChar in chars for char in chars
  console.log "5 chars"
  console.log wordCandidates5.length

  common5LetterWords = data.split ' '

  console.log 'Common 5 letter words'
  console.log common5LetterWords.length

  commonWordCandidates5 = _.intersection common5LetterWords, wordCandidates5
  console.log 'Common word candidates'
  console.log commonWordCandidates5.length
  fs.writeFile  'common5LetterWordCandidates.json', JSON.stringify(commonWordCandidates5), (err)->
    if (err) 
      throw err



# fs.readFile  'common6letterwords.txt', 'utf8', (error, data)->
#   wordCandidates6 = []
#   wordCandidates6.push(char.toString() + secondChar.toString() + thirdChar.toString() + fourthChar.toString() + fifthChar.toString() + sixthChar.toString()) for sixthChar in chars for fifthChar in chars for fourthChar in chars for thirdChar in chars for secondChar in chars for char in chars
#   console.log "6 chars"
#   console.log wordCandidates6.length

#   common6LetterWords = data.split ' '

#   console.log 'Common 6 letter words'
#   console.log common6LetterWords.length

#   commonWordCandidates = _.intersection common6LetterWords, wordCandidates6
#   console.log 'Common word candidates'
#   console.log commonWordCandidates6.length
#   console.log commonWordCandidates6
#   fs.writeFile  'common6LetterWordCandidates.json', JSON.stringify(commonWordCandidates6), (err)->
#       if (err) 
#         throw err
# 
# for secondChar in chars wordCandidates.push char.toString() + secondChar.toString() for thirdChar in chars
# wordCandidates.push char.toString() + secondChar.toString() + thirdChar.toString() 
# 				for fourthChar in chars
# 					wordCandidates.push char.toString() + secondChar.toString() + thirdChar.toString() + fourthChar.toString() 
# console.log wordCandidates.length
# console.log wordCandidates