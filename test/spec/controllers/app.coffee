'use strict'

describe 'Controller: AppCtrl', ->

  # load the controller's module
  beforeEach module 'learningYeomanCh3App'

  AppCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    AppCtrl = $controller 'AppCtrl', {
      $scope: scope
    }

  xit 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
