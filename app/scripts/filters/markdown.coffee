'use strict'

angular.module('learningYeomanCh3App').filter 'markdown', () ->
	(input, truncate) ->
		input = input.substring(0, truncate) if input and truncate
		return (markdown.toHTML(input)) if input
