'use strict'
angular.module('learningYeomanCh3App').controller 'PostDetailCtrl', ($scope, $location, post) ->
	$scope.name = 'PostDetailCtrl'
	$scope.post = post

	#Handle showing the edit view
	$scope.edit = () ->
		$location.path("/posts/edit/#{$scope.post._id}")

	#Handle deleting a post
	$scope.remove = () ->
		confirmDelete = confirm('Are you sure you want to delete this?')
		if confirmDelete
			$scope.post.$remove().then((data)->
				$location.path('/posts')
			)

		$location.path("/posts/edit/#{post._id}")

