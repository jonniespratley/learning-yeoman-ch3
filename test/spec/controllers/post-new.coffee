'use strict'
describe 'Controller: PostNewCtrl', () ->
	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	PostNewCtrl = {}
	scope = {}
	location = null
	post =
		_id: null
		title: 'Test Post'
		tags: ['jasmine', 'karma']

	httpBackend = null

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope, _$httpBackend_, $location, Post) ->
		scope = $rootScope.$new()
		location = $location
		httpBackend = _$httpBackend_


		scope.post = post

		PostNewCtrl = $controller 'PostNewCtrl', {
			$scope: scope
			$location: location,
			Post: Post
		}

	it 'should have a name on the scope', () ->
		expect(scope.name).toBe('PostNewCtrl')

	it 'should create a new post', () ->
		httpBackend.expectPOST('/api/posts', post).respond({_id:1})
		scope.save(post)
		httpBackend.flush()
		expect(location.path()).toBe('/posts')
