'use strict'
angular.module('learningYeomanCh3App').controller 'PostEditCtrl', ($scope, $location, $routeParams, Posts) ->
	$scope.name = 'PostEdit'
	id = $routeParams.postId
	$scope.post = Posts.get(id: id)
	
	#Save post
	$scope.save = (post) ->
		post.tags = post.tags.split(',')
		Posts.update({id: id}, post).$promise.then((data)->
			console.log data
			$location.path("/posts/view/#{id}")
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
