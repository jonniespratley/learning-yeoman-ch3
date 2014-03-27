'use strict'
angular.module('learningYeomanCh3App').factory 'Post', ($resource) ->
	PostResource = $resource('/api/posts/:postId', {postId: '@_id'})