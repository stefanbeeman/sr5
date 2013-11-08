'use strict'

describe 'Service: Simplelogin', () ->

  # load the service's module
  beforeEach module 'Sr5App'

  # instantiate service
  Simplelogin = {}
  beforeEach inject (_Simplelogin_) ->
    Simplelogin = _Simplelogin_

  it 'should do something', () ->
    expect(!!Simplelogin).toBe true
