'use strict'
describe 'Directive: loading', () ->
	beforeEach module 'learningYeomanCh3App'

	scope = {}
	element = {}

	beforeEach inject ($controller, $rootScope, $location, $compile) ->
		scope = $rootScope.$new()
		scope.location = $location
		element = angular.element '<loading></loading>'
		element = $compile(element) scope

	it 'should replace element with Loading...', () ->
		expect(element.text()).toBe 'Loading...'

	it 'should be hidden', () ->
		expect(element.attr('class')).toBe('loading');
