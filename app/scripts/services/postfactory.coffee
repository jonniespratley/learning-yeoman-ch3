'use strict'
angular.module('learningYeomanCh3App').factory 'PostFactory', ($resource) ->
	$resource('/api/posts/:postId', {postId: '@_id'})