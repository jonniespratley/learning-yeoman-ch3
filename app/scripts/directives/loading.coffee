'use strict'
angular.module('learningYeomanCh3App').directive('loading', ($rootScope) ->
	template: '''
	<div class="progress progress-striped active">
	  <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
	    <span class="sr-only">45% Complete</span>
	  </div>
	</div>
	'''
	restrict: 'EA'
	link: (scope, element, attrs) ->
		element.hide()
		console.log element
		$rootScope.$on( '$routeChangeStart', ->
			console.log 'show'
			element.show()
		)
		$rootScope.$on('$routeChangeSuccess', ->
			console.log 'hide'
			element.hide()
		)
	)
