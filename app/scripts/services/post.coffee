'use strict'
angular.module('learningYeomanCh3App').factory 'Post', ($resource) ->
	return $resource('/api/posts/:id', { id: '@_id' }, {
		'query': method: 'GET', isArray: true
		'update': method : 'PUT'
	})