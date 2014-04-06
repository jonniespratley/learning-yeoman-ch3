'use strict'
describe 'Service: config', () ->
	# load the service's module
	beforeEach module 'learningYeomanCh3App'

	# instantiate service
	config = {}
	beforeEach inject (_Config_) ->
		config = _Config_

	it 'should contain sitetitle and sitedesc', () ->
		expect(!!config).toBe true
		expect(config.sitetitle).toBeDefined()
		expect(config.sitedesc).toBeDefined()
