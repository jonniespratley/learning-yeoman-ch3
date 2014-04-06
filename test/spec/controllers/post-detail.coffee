'use strict'

describe 'Controller: PostDetailCtrl', () ->

	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	PostDetailCtrl = {}
	scope = {}
	post = {}
	location = null

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope, $location, Post) ->
		scope = $rootScope.$new()
		location = $location
		PostDetailCtrl = $controller 'PostDetailCtrl', {
			$scope: scope,
			$location: location,
			post: new Post(_id: 1, title: 'Test Post')
		}

	it 'should have a name on the scope', () ->
		expect(scope.name).toBe('PostDetailCtrl')
		expect(scope.post.title).toEqual('Test Post')

	it 'should load the edit view', () ->
		location.path('posts/view/1')
		scope.edit()
		expect(location.path()).toBe('/posts/edit/1')