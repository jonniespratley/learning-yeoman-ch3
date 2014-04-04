'use strict'
angular.module('learningYeomanCh3App').controller 'PostNewCtrl', ($scope, $location, Post) ->
	$scope.post = new Post(
		title: ''
		body: ''
		published: true
		image: ''
		tags: []
	)

	#Save post
	$scope.save = () ->
		$scope.post.tags = $scope.post.tags.split(',')
		$scope.post.$save().then((result)->
			console.log result
			$location.path("/posts")
		)