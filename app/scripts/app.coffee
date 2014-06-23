'use strict'

angular.module('learningYeomanCh3App', [
	'ngAnimate'
	'ngCookies'
	'ngResource'
	'ngSanitize'
	'ngRoute'
])
	.config ($routeProvider) ->
		$routeProvider
			
			.when '/',
				templateUrl: 'views/main.html'
				controller: 'MainCtrl'
			
			.when '/about',
				templateUrl: 'views/about.html'
				controller: 'AboutCtrl'

			.otherwise
				redirectTo: '/'

#App Controller
angular.module('learningYeomanCh3App').controller 'AppCtrl', ($scope, $rootScope, $log, $cookieStore, Config) ->
	$scope.name = 'chapter3App'

	$scope.App = angular.copy(Config)
	$scope.App.session = $cookieStore.get('App.session')

	window.App = $rootScope.App = $scope.App

	$log.info $rootScope