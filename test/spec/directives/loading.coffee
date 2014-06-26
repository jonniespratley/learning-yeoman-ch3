'use strict'
describe 'Directive: loading', () ->
	beforeEach module 'learningYeomanCh3App'

	scope = null
	element = null

	beforeEach inject ($controller, $rootScope, $compile) ->
		scope = $rootScope.$new()
		element = angular.element '<loading></loading>'
		element = $compile(element) scope

	it 'should replace element with Loading...', () ->
		expect(element.text()).toBe 'Loading...'

	it 'should hidden by default', () ->
		expect(element.attr('style')).toContain 'display: none;'

	it 'should be visible during $locationChangeStart event', inject ($rootScope, $location) ->
		$location.path('/about')
		$rootScope.$apply()
		expect(element.attr('style')).not.toContain 'display: none;'
