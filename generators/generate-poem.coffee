
fs = require 'fs'
_ = require 'underscore'
_s = require 'underscore.string'
process.chdir('../data')

fs.readFile  'keepers-1-17-2016.txt', 'utf8', (error, data)=>
	lines = data.split "\n"
	lines = _.shuffle lines
	console.log(lines[num]) for num in [0..3]
	console.log ""
	console.log(lines[num]) for num in [4..7]
	console.log ""
	console.log(lines[num]) for num in [8..12]
	console.log ""
	console.log(lines[num]) for num in [13..14]
