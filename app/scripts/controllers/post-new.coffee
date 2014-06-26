'use strict'
angular.module('learningYeomanCh3App').controller 'PostNewCtrl', ($scope, $location, Post) ->
	$scope.name = 'PostNewCtrl'
	$scope.post =
		title: ''
		body: ''
		published: true
		image: ''
		tags: []

	#Handle canceling edit
	$scope.cancel = () ->
		$location.path('/posts')
	
	#Save post
	$scope.save = (post) ->
		$scope.post = new Post(post)
		$scope.post.tags = String($scope.post.tags).split(',')
		$scope.post.$save().then((result)->
			$location.path('/posts')
		)