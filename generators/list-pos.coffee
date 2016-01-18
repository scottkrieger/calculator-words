
fs = require 'fs'
_ = require 'underscore'
process.chdir('data')

generateSentence = (words,sentenceStructure )->
	sentence = ''
	_.each sentenceStructure, (wordType)->
		sentence += _.sample(words[wordType]) + " "
	sentence


fs.readFile  'commoncalculatorwordsbypos.json', 'utf8', (error, data)=>
	words = JSON.parse data
	poss = _.keys words
	_.each poss, (pos)=>
		console.log pos,words[pos].length
		words[pos] = _.sortBy words[pos]
		_.each words[pos], (word)->
			console.log pos + ": " + word
	console.log ""	
