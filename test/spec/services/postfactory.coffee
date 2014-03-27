'use strict'

describe 'Service: PostFactory', () ->

  # load the service's module
  beforeEach module 'learningYeomanCh3App'

  # instantiate service
  PostFactory = {}
  beforeEach inject (_PostFactory_) ->
    PostFactory = _PostFactory_

  it 'should do something', () ->
    expect(!!PostFactory).toBe true
