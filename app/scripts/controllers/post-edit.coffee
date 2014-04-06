'use strict'
angular.module('learningYeomanCh3App').controller 'PostEditCtrl', ($scope, $location, post, slugifyFilter) ->
	$scope.name = 'PostEdit'
	$scope.post = post
	
	#Save post
	$scope.save = (post) ->
		post.tags = String(post.tags).split(',')
		post.slug = slugifyFilter(post.title, true)

		$scope.post.$update().then((data)->
			console.log data
			$location.path("/posts/view/#{$scope.post._id}")
		)

	#Handle canceling edit
	$scope.cancel = () ->
		$location.path("/posts/view/#{$scope.post._id}")

	#Handle deleting a post
	$scope.remove = () ->
		confirmDel = confirm('Are you sure you want to delete this post?')
		if confirmDel
			$scope.post.$remove().then((data)->
				$location.path("/posts")
				console.log(data)
			)
