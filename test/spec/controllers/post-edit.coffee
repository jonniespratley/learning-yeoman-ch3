'use strict'

describe 'Controller: PostEditCtrl', () ->

	# load the controller's module
	beforeEach module 'learningYeomanCh3App'

	PostEditCtrl = {}
	scope = {}

	# Initialize the controller and a mock scope
	beforeEach inject ($controller, $rootScope) ->
		scope = $rootScope.$new()
		PostEditCtrl = $controller 'PostEditCtrl', {
			$scope: scope
		}

	xit 'should attach a list of awesomeThings to the scope', () ->
		expect(scope.awesomeThings.length).toBe 3
