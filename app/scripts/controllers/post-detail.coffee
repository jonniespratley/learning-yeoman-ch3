'use strict'
angular.module('learningYeomanCh3App').controller 'PostDetailCtrl', ($scope, $location, post, Post) ->
	$scope.name = 'PostDetail'
	$scope.post = post
	
	#Handle showing the edit view
	$scope.edit = () ->
		console.log $scope.post
		$location.path("/posts/#{$scope.post._id}/edit")