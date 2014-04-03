'use strict'
angular.module('learningYeomanCh3App').controller 'PostEditCtrl', ($scope, $location, post) ->
	$scope.name = 'PostEdit'
	$scope.post = post
	
	#Save post
	$scope.save = () ->
		console.log $scope.post
		$scope.post.$save().then((data)->
			console.log data
			$location.path("/posts/view/#{data._id}")
		)

	#Handle canceling edit
	$scope.cancel = () ->
		$location.path("/posts/view/#{$scope.post._id}")

	#Handle deleting a post
	$scope.remove = () ->
		$scope.post.$remove().then((data)->
			$location.path("/posts")
			console.log(data)
		)
