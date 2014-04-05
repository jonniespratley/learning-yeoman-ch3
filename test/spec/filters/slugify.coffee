'use strict'

describe 'Filter: slugify', () ->

	# load the filter's module
	beforeEach module 'learningYeomanCh3App'

	# initialize a new instance of the filter before each test
	slugify = {}
	beforeEach inject ($filter) ->
		slugify = $filter 'slugify'

	it 'should make "a string like this" to "a-string-like-this"', () ->
		input = 'a string like this'
		output = 'a-string-like-this'
		expect(slugify(input)).toBe(output)

	it 'should make "A String Like This" to "a-string-like-this"', () ->
		input = 'a string like this'
		output = 'a-string-like-this'
		expect(slugify(input, true )).toBe(output)
