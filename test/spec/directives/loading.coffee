'use strict'
describe 'Directive: loading', () ->
	beforeEach module 'learningYeomanCh3App'
	scope = {}

	beforeEach inject ($controller, $rootScope, $location) ->
		scope = $rootScope.$new()
		scope.location = $location

	it 'should replace element with Loading...', inject ($compile) ->
		element = angular.element '<loading></loading>'
		element = $compile(element) scope
		expect(element.text()).toBe 'Loading...'
