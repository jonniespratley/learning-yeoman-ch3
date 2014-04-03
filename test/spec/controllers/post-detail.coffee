'use strict'

describe 'Controller: PostDetailCtrl', () ->

  # load the controller's module
  beforeEach module 'learningYeomanCh3App'

  PostDetailCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PostDetailCtrl = $controller 'PostDetailCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3