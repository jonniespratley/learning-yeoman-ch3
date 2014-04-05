'use strict'

angular.module('learningYeomanCh3App').filter 'markdown', ($sce) ->
	(input, truncate) ->
		input = input.substring(0, truncate) if input and truncate
		return $sce.trustAsHtml(markdown.toHTML(input)) if input
