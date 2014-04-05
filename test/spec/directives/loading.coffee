'use strict'
describe 'Directive: loading', () ->

  # load the directive's module
  beforeEach module 'learningYeomanCh3App'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should replace element with Loading...', inject ($compile) ->
    element = angular.element '<loading></loading>'
    element = $compile(element) scope
    expect(element.text()).toBe 'Loading...'
