'use strict'

describe 'Directive: dropselect', () ->

  # load the directive's module
  beforeEach module 'sr5App'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<dropselect></dropselect>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the dropselect directive'
