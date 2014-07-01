###*
 @filename app-e2e.coffee
 This file contains the test for Karma e2e Runner.
###
describe 'Learning Yeoman Chapter 3', ->

	it 'should display feature and list of features', ->
		browser().navigateTo '/'
		# Our page should have 3 features
		expect(repeater('.media').count()).toEqual 3
