'use strict'

describe 'Filter: slugify', () ->

  # load the filter's module
  beforeEach module 'learningYeomanCh3App'

  # initialize a new instance of the filter before each test
  slugify = {}
  beforeEach inject ($filter) ->
    slugify = $filter 'slugify'

  it 'should return the input prefixed with "slugify filter:"', () ->
    text = 'angularjs'
    expect(slugify text).toBe ('slugify filter: ' + text)
