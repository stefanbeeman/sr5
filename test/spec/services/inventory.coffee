'use strict'

describe 'Service: Inventory', () ->

  # load the service's module
  beforeEach module 'Sr5App'

  # instantiate service
  Inventory = {}
  beforeEach inject (_Inventory_) ->
    Inventory = _Inventory_

  it 'should do something', () ->
    expect(!!Inventory).toBe true
