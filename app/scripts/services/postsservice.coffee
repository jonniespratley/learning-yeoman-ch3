'use strict'
angular.module('learningYeomanCh3App').service "PostsService", ($resource, $q, $route, PostFactory) ->
	Service = 
		fetch: () ->
			dfd = $q.defer()
			console.log 'fetch posts'
			PostFactory.query().$promise.then((posts)->
					dfd.resolve(posts)
			)
			dfd.promise
			
		get: () ->
			dfd = $q.defer()
			id = $route.current.params.postId
			console.log "fetch post #{id}"
			PostFactory.get({postId: id}).$promise.then((post) ->
				dfd.resolve(post)
				console.log(post)
			)
			dfd.promise

		add: () ->
			dfd = $q.defer()
			console.log 'new post'
			dfd.resolve({})
