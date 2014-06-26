'use strict'

describe 'Controller: PostEditCtrl', () ->

	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	PostEditCtrl = null
	scope = null
	location = null
	slugify = null
	httpBackend = null
	post = null

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope, _$httpBackend_, $location, Post, slugifyFilter) ->
		scope = $rootScope.$new()
		location = $location
		post = new Post(
			_id: 1
			title: 'Test Post'
			tags: ['jasmine', 'karma']
		)
		slugify = slugifyFilter
		httpBackend = _$httpBackend_
		scope.post = post

		httpBackend.when('DELETE', '/api/posts/1').respond({_id:1})
		httpBackend.when('PUT', '/api/posts/1').respond({_id:1})

		PostEditCtrl = $controller 'PostEditCtrl', {
			$scope: scope
			$location: location
			post: post
			slugifyFilter: slugify
		}

	it 'should have a name on the scope', () ->
		expect(scope.name).toBe('PostEditCtrl')
		expect(scope.post.title).toEqual('Test Post')

	it 'should change location to detail view on cancel', () ->
		scope.cancel()
		expect(location.path()).toBe('/posts/view/1')

	it 'should update the post', () ->
		scope.save()
		httpBackend.flush()
		expect(location.path()).toBe('/posts/view/1')

	it 'should delete the post', () ->
		location.path('/posts/edit/1')
		scope.remove()
		httpBackend.flush()
		expect(location.path()).toBe('/posts')

