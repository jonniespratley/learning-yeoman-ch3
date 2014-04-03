'use strict'

angular.module('learningYeomanCh3App').controller 'PostsCtrl', ($scope, $location, posts) ->
	$scope.awesomeThings = [
		'HTML5 Boilerplate'
		'AngularJS'
		'Karma'
	]
	$scope.name = 'Posts'
	$scope.posts = posts
	$scope.p = null
	#$scope.tag = 'generator-angular'

	$scope.add = ()->
		$location.path('/posts/new')

	$scope.view = (id)->
		$location.path('/posts/view/' + id)