'use strict'
describe 'Service: Post', () ->

  # load the service's module
  beforeEach module 'learningYeomanCh3App'

  # instantiate service
  Post = {}
  beforeEach inject (_Post_) ->
    Post = _Post_

  it 'should do something', () ->
    expect(!!Post).toBe true
