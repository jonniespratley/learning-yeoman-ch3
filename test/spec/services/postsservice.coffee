'use strict'

describe 'Service: PostsService', () ->

	# load the service's module
	beforeEach module 'learningYeomanCh3App'

	# instantiate service
	PostsService = {}
	httpBackend = null
	posts = null
	mockData = [{_id: 1}, {_id:2}, {_id:3}]
	route = null

	beforeEach inject (_PostsService_, _$httpBackend_, _$route_) ->
		PostsService = _PostsService_
		httpBackend = _$httpBackend_
		route - _$route_
		httpBackend.whenGET('views/main.html').respond(mockData)


	afterEach( ->
		httpBackend.verifyNoOutstandingExpectation()
		httpBackend.verifyNoOutstandingRequest()
	)

	it 'should fetch list of posts and resolve promise on success', () ->
		httpBackend.expectGET('/api/posts').respond(200, mockData)
		posts = null
		promise = PostsService.query()
		promise.then((data)->
			posts = data
		)
		expect(posts).toBeNull()
		httpBackend.flush()
		expect(posts.length).toEqual(3)

	it 'should fetch list of posts and reject promise on error', () ->
		httpBackend.expectGET('/api/posts').respond(404, 'Error')
		posts = null
		promise = PostsService.query()
		promise.then(
			(data)-> posts = data
		,
		(e) -> posts = e
		)
		expect(posts).toBeNull()
		httpBackend.flush()

		expect(posts.data).toBe('Error')

	xit 'should fetch a post and resolve promise on success', ->
		httpBackend.expectGET('/api/posts/1').respond(200, {id: 1, title: 'Post'})
		route.params.id = 1
		post = null
		promise = PostsService.get(1)
		promise.then((data)->
			post = data
		)
		expect(post).toBeNull()
		httpBackend.flush()
		expect(post.id).toEqual(1)

	xit 'should fetch a post and reject promise on error', ->
		httpBackend.expectGET('/api/posts/1').respond(404, 'Error')
		post = null
		promise = PostsService.get(1)
		promise.then(
			(data)-> post = data
		,
			(e) -> post = e
		)
		expect(post).toBeNull()
		httpBackend.flush()
		expect(post.data).toBe('Error')
