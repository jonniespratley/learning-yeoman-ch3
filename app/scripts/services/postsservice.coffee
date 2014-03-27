'use strict'

angular.module('learningYeomanCh3App').factory "PostsService", ($resource, $http, $q, $route) ->
    url = '/api/posts'
    options = 
      method: 'GET'
      url: url
      cache: true
        
        
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
        PostResource.get({_id: id}).$promise
        console.log "fetch post #{id}"
        
     
        delay.promise

      
