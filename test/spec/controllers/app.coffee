'use strict'

describe 'Controller: AppCtrl', () ->

	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	AppCtrl = {}
	scope = {}
	rootScope = null
	config = null

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope, $log, $route, $location, $routeParams, $cookieStore, Config) ->

		scope = $rootScope.$new()
		config = Config
		rootScope = $rootScope

		AppCtrl = $controller 'AppCtrl', {
			$scope: scope
			$rootScope: $rootScope
			$log: $log
			$route: $route
			$location: $location
			$routeParams: $routeParams
			$cookieStore: $cookieStore
			Config: config
		}

	it 'should have name on scope', () ->
		expect(scope.name).toBe 'chapter3App'

	it 'should have App on scope', () ->
		expect(rootScope.App).toBeDefined()
