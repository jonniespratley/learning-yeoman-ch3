'use strict'
angular.module('learningYeomanCh3App').controller 'PostNewCtrl', ($scope, $location, Post) ->
	$scope.name = 'PostNewCtrl'
	$scope.post =
		title: ''
		body: ''
		published: true
		image: ''
		tags: []

	#Save post
	$scope.save = (post) ->
		$scope.post = new Post(post)
		$scope.post.tags = String($scope.post.tags).split(',')
		$scope.post.$save().then((result)->
			console.log result
			$location.path("/posts")
		)