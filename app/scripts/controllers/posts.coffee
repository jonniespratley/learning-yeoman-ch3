'use strict'

angular.module('learningYeomanCh3App').controller 'PostsCtrl', ($scope, $location, posts) ->
	$scope.name = 'Posts'
	$scope.posts = posts

	$scope.add = ()->
		$location.path('/posts/new')

	$scope.view = (id)->
		$location.path('/posts/view/' + id)