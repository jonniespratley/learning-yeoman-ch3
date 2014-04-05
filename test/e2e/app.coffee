###
MainPage view
###
MainPage =
	index: () ->
		browser().navigateTo('/')

MainPage = ->
	@sitetitle = element(protractor.By.binding("App.sitetitle"))
	@sitedesc = element(protractor.By.binding("yourName"))
	@get = ->
		return browser.get("http://localhost:9000")

describe 'Chapter3 e2e:', ->
	describe "the main page", ->
	it "should have feature and 3 features", ->
		mainPage = new MainPage()
		mainPage.get()
		
		expect(mainPage.sitetitle.getText()).toEqual(Config.sitetitle)
