'use strict'
describe 'Controller: MainCtrl', () ->
	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	MainCtrl = {}
	scope = {}

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope) ->
		scope = $rootScope.$new()
		MainCtrl = $controller 'MainCtrl', {
			$scope: scope
		}

	it 'should have a name on the scope', () ->
		expect(scope.name).toBe('MainCtrl')
