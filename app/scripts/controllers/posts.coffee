'use strict'
angular.module('learningYeomanCh3App').controller 'PostsCtrl', ($scope, $location, posts) ->
	#Set the name of the view
	$scope.name = 'Posts'

	#Set the selected post
	$scope.p = null

	#Set the posts filter
	$scope.postFilter = null

	#Set the posts array to the routers resolved promise
	$scope.posts = posts

	#Display post form
	$scope.add = ()->
		$location.path('/posts/new')

	#Display post details
	$scope.view = (id)->
		$location.path('/posts/view/' + id)

	#Display post editor form
	$scope.edit = (id)->
		$location.path('/posts/edit/' + id)
