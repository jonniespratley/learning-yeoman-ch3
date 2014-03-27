'use strict'

angular.module('learningYeomanCh3App').factory "PostsService", ($resource, $http, $q, $route) ->
    PostResource = $resource('/api/posts/:postId', {postId: '@_id'})
    Service = 
      fetch: () ->
        delay = $q.defer()
        console.log 'fetch posts'
        PostResource.query().$promise.then((posts)->
            delay.resolve(posts)
        )
        delay.promise
        
      get: () ->
        delay = $q.defer()
        id = $route.current.params.postId
        console.log "fetch post #{id}"
        PostResource.get({postId: id}).$promise.then((post) ->
        	delay.resolve(post)
        	console.log(post)
        )
        delay.promise
