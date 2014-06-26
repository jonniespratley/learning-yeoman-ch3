'use strict'
angular.module('learningYeomanCh3App').controller 'PostEditCtrl', ($scope, $location, post, slugifyFilter) ->
	$scope.name = 'PostEditCtrl'
	$scope.post = post
	
	#Save post
	$scope.save = () ->
		$scope.post.tags = String($scope.post.tags).split(',')
		$scope.post.slug = slugifyFilter($scope.post.title, true)

		$scope.post.$update().then((data)->
			$location.path("/posts/view/#{data._id}")
		)

	#Handle canceling edit
	$scope.cancel = () ->
		$location.path("/posts/view/#{$scope.post._id}")

	#Handle deleting a post
	$scope.remove = () ->
		#confirmDel = confirm('Are you sure you want to delete this post?')
		#if confirmDel
		$scope.post.$remove().then((data)->
			$location.path("/posts")
		)
