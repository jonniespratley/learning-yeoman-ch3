'use strict'
describe 'Controller: PostsCtrl', () ->
	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	PostsCtrl = {}
	scope = {}

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope) ->
		scope = $rootScope.$new()
		PostsCtrl = $controller 'PostsCtrl', {
			$scope: scope,
			posts: [1, 2, 3]
		}

	it 'should have a list of posts', () ->
		expect(scope.posts.length).toBe(3)
