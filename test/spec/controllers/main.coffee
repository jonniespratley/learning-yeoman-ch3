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

	xit 'should attach a list of awesomeThings to the scope', () ->
		expect(scope.awesomeThings.length).toBe 3
