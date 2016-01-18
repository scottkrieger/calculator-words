
fs = require 'fs'
_ = require 'underscore'
process.chdir('../data')

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
	
	simpleSentence = generateSentence(words,['noun','verb'])
	console.log simpleSentence