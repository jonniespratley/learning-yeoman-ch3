'use strict'

angular.module('learningYeomanCh3App').filter "slugify", ->
	(input, lowercase) ->
		out = ""
		out = input.replace(/\s/g, "-") if input
		out = out.toLowerCase()  if lowercase
		return out