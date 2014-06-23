'use strict'
angular.module('learningYeomanCh3App').controller 'MainCtrl', ($scope, $rootScope) ->
	$scope.name = 'MainCtrl'
	$scope.filter =
	 tag: 'featured'