'use strict'

angular.module('learningYeomanCh3App').filter 'markdown', ($sce) ->
	(input) ->
		$sce.trustAsHtml(markdown.toHTML(input)) if input
