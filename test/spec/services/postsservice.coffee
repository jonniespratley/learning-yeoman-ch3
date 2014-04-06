'use strict'

describe 'Service: PostsService', () ->

	# load the service's module
	beforeEach module 'learningYeomanCh3App'

	# instantiate service
	PostsService = {}
	httpBackend = null
	posts = null
	mockData = [{_id: 1}, {_id:2}, {_id:3}]

	beforeEach inject (_PostsService_, _$httpBackend_) ->
		PostsService = _PostsService_
		httpBackend = _$httpBackend_
		httpBackend.expectGET('/api/posts').respond(mockData)
		httpBackend.whenGET('/views/main.html').respond(mockData)

	afterEach( ->
		httpBackend.verifyNoOutstandingExpectation()
		httpBackend.verifyNoOutstandingRequest()
	)

	xit 'should fetch list of posts', () ->
		posts = null
		promise = PostsService.query()
		promise.then((data)->
			posts = data
		)
		expect(posts).toBeNull()
		httpBackend.flush()
		expect(posts.length).toEqual(3)
