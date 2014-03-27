'use strict'
angular.module('learningYeomanCh3App').controller 'PostDetailCtrl', ($scope, $location, post) ->
	$scope.name = 'PostDetail'
	$scope.post = post
	
	#Show edit
	$scope.edit = () ->
		console.log $scope.post
		$location.path("/posts/#{$scope.post._id}/edit")