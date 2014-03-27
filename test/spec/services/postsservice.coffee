'use strict'

describe 'Service: PostsService', () ->

  # load the service's module
  beforeEach module 'learningYeomanCh3App'

  # instantiate service
  PostsService = {}
  beforeEach inject (_PostsService_) ->
    PostsService = _PostsService_

  it 'should do something', () ->
    expect(!!PostsService).toBe true
