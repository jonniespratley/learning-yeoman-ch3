'use strict'
angular.module('learningYeomanCh3App').controller 'PostDetailCtrl', ($scope, $location, post) ->
	$scope.name = 'PostDetailCtrl'
	$scope.post = post
	
	#Handle showing the edit view
	$scope.edit = () ->
		$location.path("/posts/edit/#{post._id}")