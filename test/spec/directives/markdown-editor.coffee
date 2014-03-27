'use strict'

describe 'Directive: markdownEditor', () ->

  # load the directive's module
  beforeEach module 'learningYeomanCh3App'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<markdown-editor></markdown-editor>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the markdownEditor directive'
