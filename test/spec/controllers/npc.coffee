'use strict'

describe 'Controller: NpcCtrl', () ->

  # load the controller's module
  beforeEach module 'sr5App'

  NpcCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    NpcCtrl = $controller 'NpcCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
