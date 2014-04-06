'use strict'
describe 'Controller: PostsCtrl', () ->
	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	PostsCtrl = {}
	scope = {}
	location = {}

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope, $location) ->
		scope = $rootScope.$new()
		location = $location
		posts = [1,2,3]
		PostsCtrl = $controller 'PostsCtrl', {
			$scope: scope
			$location: location
			posts: posts
		}

	it 'should have a name property equal to Posts on the scope', () ->
		expect(scope.name).toBe('Posts')
		expect(scope.posts.length).toBe(3)

	it 'should change the location to /posts/new', () ->
		location.path('/posts')
		scope.add()
		expect(location.path()).toEqual('/posts/new')

	it 'should change the location to /posts/view/:id', () ->
		location.path('/posts')
		scope.view(1)
		expect(location.path()).toEqual('/posts/view/1')

	it 'should change the location to /posts/edit/:id', () ->
		location.path('/posts')
		scope.edit(1)
		expect(location.path()).toEqual('/posts/edit/1')

