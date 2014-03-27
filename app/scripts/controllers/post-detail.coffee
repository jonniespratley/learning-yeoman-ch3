'use strict'
angular.module('learningYeomanCh3App').controller 'PostDetailCtrl', ($scope, $location, post, Post) ->
	$scope.name = 'PostDetail'
	$scope.post = post
	
	#Show edit
	$scope.edit = () ->
		console.log $scope.post
		$location.path("/posts/#{$scope.post._id}/edit")
	$scope.save = (data) ->
		$scope.post.$save()
		console.log(data)
