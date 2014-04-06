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
		httpBackend.expectPUT('/api/posts/1', post).respond({_id:1})
		scope.save()
		httpBackend.flush()
		expect(location.path()).toBe('/posts/view/1')

	xit 'should delete the post', () ->
		#httpBackend.expectDELETE('/api/posts/1', post).respond({_id:1})
		#location.path('/posts/edit/1')
		scope.remove()

		#httpBackend.flush()
		expect(location.path()).toBe('/posts')

