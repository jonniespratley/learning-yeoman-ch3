'use strict'

describe 'Controller: PostDetailCtrl', () ->

	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	PostDetailCtrl = {}
	scope = {}
	post = {}
	location = null
	routeParams = null

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope, $location, $routeParams, Post) ->
		scope = $rootScope.$new()
		location = $location
		routeParams = $routeParams

		post = new Post(id: 1, title: 'Test Post')

		scope.post = post
		routeParams.postId = 1

		PostDetailCtrl = $controller 'PostDetailCtrl', {
			$scope: scope,
			$location: location,
			$routeParams: routeParams,
			Post: Post
		}

	it 'should have a name on the scope', () ->
		expect(scope.name).toBe('PostDetailCtrl')

	it 'should load the edit view', () ->
		location.path('posts/view/1')
		scope.edit()
		expect(location.path()).toBe('/posts/edit/1')