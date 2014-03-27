'use strict'
angular.module('learningYeomanCh3App').factory 'PostFactory', ($resource) ->
	PostResource = $resource('/api/posts/:postId', {postId: '@_id'})