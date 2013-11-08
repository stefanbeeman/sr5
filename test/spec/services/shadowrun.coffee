'use strict'

describe 'Service: Shadowrun', () ->

  # load the service's module
  beforeEach module 'Sr5App'

  # instantiate service
  Shadowrun = {}
  beforeEach inject (_Shadowrun_) ->
    Shadowrun = _Shadowrun_

  it 'should do something', () ->
    expect(!!Shadowrun).toBe true
