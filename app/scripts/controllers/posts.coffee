'use strict'

angular.module('learningYeomanCh3App').controller 'PostsCtrl', ($scope, $location, Posts) ->
	$scope.name = 'Posts'
	$scope.posts = Posts.query()

	$scope.add = ()->
		$location.path('/posts/new')

	$scope.view = (id)->
		$location.path('/posts/view/' + id)