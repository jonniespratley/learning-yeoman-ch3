'use strict'

describe 'Controller: PostNewCtrl', () ->

  # load the controller's module
  beforeEach module 'learningYeomanCh3App'

  PostNewCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PostNewCtrl = $controller 'PostNewCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
