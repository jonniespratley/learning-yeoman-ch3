'use strict'
angular.module('learningYeomanCh3App').directive('loading', ($rootScope) ->
	template: '<p>Loading...</p>'
	restrict: 'EA'
	replace: true
	link: (scope, element, attrs) ->
		element.addClass('loading').hide()
		$rootScope.$on( '$locationChangeStart', ->
			element.fadeIn('fast')
		)
		$rootScope.$on('$locationChangeSuccess', ->
			element.fadeOut('fast')
		)
	)
