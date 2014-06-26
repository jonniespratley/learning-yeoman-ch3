'use strict'
angular.module('learningYeomanCh3App').controller 'MainCtrl', ($scope) ->
	$scope.name = 'MainCtrl'
	$scope.filter =
		tag: 'featured'