say = require 'say'
fs = require 'fs'
_ = require 'underscore'
process.chdir('../data')
punctuation = ['comma','period']
generateSentence = ( words,sentenceStructure )->
	sentence = ''
	# console.log sentenceStructure.length
	_.each sentenceStructure, (wordType)->
		# console.log wordType
		if wordType not in punctuation
			sentence += " "
		sentence += _.sample(words[wordType]) 
	sentence


fs.readFile  'common-calculator-words-by-pos-1-17-2016.json', 'utf8', (error, data)=>
	words = JSON.parse data
	poss = _.keys words
	_.each poss, (pos)=>
		# console.log pos,words[pos].length
	console.log ""	

	fs.readFile  'line-types.json', 'utf8', (error, data)=>
		lineTypes = JSON.parse data
		# console.log lineTypes
		poemCandidate = ""

		generateLine = (lineType)=>
			# console.log lineType
			poemCandidate += generateSentence(words,lineType) + " \n" 

		
		generateLine lineType for lineType in lineTypes
		
		console.log poemCandidate	
		# say.speak null, poemCandidate
