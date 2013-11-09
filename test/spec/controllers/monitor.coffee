'use strict'

describe 'Controller: MonitorCtrl', () ->

  # load the controller's module
  beforeEach module 'sr5App'

  MonitorCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MonitorCtrl = $controller 'MonitorCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
