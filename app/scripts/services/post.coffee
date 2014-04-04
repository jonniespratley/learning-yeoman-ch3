'use strict'
angular.module('learningYeomanCh3App').factory 'Post', ($resource) ->
	return $resource('/api/posts/:postId', { postId: '@_id' }, { update: method : 'PUT' })