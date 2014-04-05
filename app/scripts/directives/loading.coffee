'use strict'
angular.module('learningYeomanCh3App').directive('loading', ($rootScope) ->
	template: '<p>Loading...</p>'
	restrict: 'EA'
	replace: true
	link: (scope, element, attrs) ->
		element.addClass('loading').fadeOut('fast')
		$rootScope.$on( '$routeChangeStart', ->
			element.fadeIn('fast')
		)
		$rootScope.$on('$routeChangeSuccess', ->
			element.fadeOut()
		)
	)
