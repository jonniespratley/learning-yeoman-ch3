'use strict'
describe 'Service: Post', () ->

	# load the service's module
	beforeEach module 'learningYeomanCh3App'

	# instantiate service
	Post = {}
	httpBackend = null
	mockData = [{_id: 1}, {_id:2}, {_id:3}]

	beforeEach inject (_$httpBackend_, _Post_) ->
		Post = _Post_
		httpBackend = _$httpBackend_
	
	it 'should fetch list of posts', () ->
		httpBackend.expectGET('/api/posts').respond(mockData)
		posts = null
		promise = Post.query().$promise
		promise.then((data)->
			posts = data
		)
		expect(posts).toBeNull()
		httpBackend.flush()
		expect(posts.length).toEqual(3)
