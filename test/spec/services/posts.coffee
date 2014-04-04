'use strict'

describe 'Service: Posts', () ->

  # load the service's module
  beforeEach module 'learningYeomanCh3App'

  # instantiate service
  Posts = {}
  beforeEach inject (_Posts_) ->
    Posts = _Posts_

  it 'should do something', () ->
    expect(!!Posts).toBe true
