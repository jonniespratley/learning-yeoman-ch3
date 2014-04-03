'use strict'
angular.module('learningYeomanCh3App').controller 'PostNewCtrl', ($scope, $location, Post) ->
	$scope.post = new Post(
		title: ''
		body: ''
		published: true
		image: 'http://placehold.it/150'
		tags: []
	)

	#Save post
	$scope.save = (data) ->
		$scope.post.$save().then((data)->
			console.log data
			$location.path("/posts")
		)