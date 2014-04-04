'use strict'
angular.module('learningYeomanCh3App').service "PostsService", ($resource, $q, $route, Posts) ->
	api =
		query: () ->
			dfd = $q.defer()
			Posts.query().$promise.then((posts)->
					dfd.resolve(posts)
			)
			dfd.promise
			
		get: (id) ->
			dfd = $q.defer()
			id = $route.current.params.postId unless id
			Posts.get({id: id}).$promise.then((post) ->
				dfd.resolve(post)
			)
			dfd.promise

		add: () ->
			dfd = $q.defer()
			dfd.resolve({})
