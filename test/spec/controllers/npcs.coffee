'use strict'

describe 'Controller: NpcsCtrl', () ->

  # load the controller's module
  beforeEach module 'sr5App'

  NpcsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    NpcsCtrl = $controller 'NpcsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
