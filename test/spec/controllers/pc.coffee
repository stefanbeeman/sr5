'use strict'

describe 'Controller: PcCtrl', () ->

  # load the controller's module
  beforeEach module 'sr5App'

  PcCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PcCtrl = $controller 'PcCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
