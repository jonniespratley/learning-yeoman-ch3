'use strict'
describe 'Service: config', () ->
	# load the service's module
	beforeEach module 'learningYeomanCh3App'

	# instantiate service
	config = {}
	beforeEach inject (_config_) ->
		config = _config_

	it 'should contain sitetitle and sitedesc', () ->
		expect(!!config).toBe true
		expect(config.sitetitle).toBeDefined()
		expect(config.sitedesc).toBeDefined()
