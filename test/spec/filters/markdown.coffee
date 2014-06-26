'use strict'
describe 'Filter: markdown', () ->
	# load the filter's module
	beforeEach module 'learningYeomanCh3App'

	# initialize a new instance of the filter before each test
	markdown = {}
	beforeEach inject ($filter) ->
		markdown = $filter 'markdown'

	it 'should return the input converted to HTML', () ->
		input = '#Heading 1'
		output = '<h1>Heading 1</h1>'
		expect(markdown(input)).toBe(output)

	it 'should return the input converted to HTML and truncated to length', () ->
		input = 'This text is **bold**, and this will be truncated.'
		output = '<p>This text is <strong>bold</strong>, and</p>'

			#Limit to 26 chars
		expect(markdown(input, 26)).toBe(output)