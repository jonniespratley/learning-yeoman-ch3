'use strict'
angular.module('learningYeomanCh3App').controller 'PostEditCtrl', ($scope, $location, post) ->
	$scope.name = 'PostEdit'
	$scope.post = post
	
	#Save post
	$scope.save = () ->
		console.log $scope
		console.log $scope.post
		$scope.post.$save().then((data)->
			console.log data
			$location.path("/posts/#{$scope.post._id}")
		)
	$scope.cancel = () ->
		$location.path("/posts/#{$scope.post._id}")
