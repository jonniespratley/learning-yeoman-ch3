Config =
	baseurl: "http://localhost:9000/#"
	sitetitle: "learning yeoman"
	sitedesc: " a starting point for a modern angular.js application."
	sitecopy: "2014 Copywrite"
	version: '0.0.1'
	email: "admin@email.com"
	debug: true
	feature:
		title: 'Chapter 3'
		image: 'http://a481ab4f6ea4dd65cff0-b2b68ced242ecf1cb9bc1021688e3775.r49.cf1.rackcdn.com/img/learning-yeoman/yo-ng.png'
		body: 'A starting point for a modern angular.js application.'
	features: [
		id: 1
		title: "HTML5"
		body: "Using HTML5 for better user experience."
		image: "http://a481ab4f6ea4dd65cff0-b2b68ced242ecf1cb9bc1021688e3775.r49.cf1.rackcdn.com/img/learning-yeoman/feature-html5.png",

			id: 2
		title: "AngularJS"
		body: "Framework of choice is Angular"
		image: "http://a481ab4f6ea4dd65cff0-b2b68ced242ecf1cb9bc1021688e3775.r49.cf1.rackcdn.com/img/learning-yeoman/feature-angular.png",

			id: 3
		title: "Twitter Bootstrap"
		body: "UI is Twitter Bootstrap 3.0."
		image: "http://a481ab4f6ea4dd65cff0-b2b68ced242ecf1cb9bc1021688e3775.r49.cf1.rackcdn.com/img/learning-yeoman/feature-bootstrap.png"
	]
	session:
		authorized: false
		user: null
	layout:
		header: "views/_header.html"
		sidebar: "views/_sidebar.html"
		content: "views/_content.html"
		footer: "views/_footer.html"
		menu: [
			title: "Home"
			href: "/",

			title: "About"
			href: "/about",

			title: "Posts"
			href: "/posts"
		]



#MainPage view
MainPage = ->
	@sitetitle = element(protractor.By.binding("App.sitetitle"))
	@featureTitle = element(protractor.By.binding("App.feature.title"))
	@featureDesc = element(protractor.By.binding("App.feature.body"))
	@features = element(protractor.By.binding("App.features"))
	@get = ->
		return browser.get("http://localhost:9000/#")
	@name = 'MainPage'

#Post Edit Page
PostPage = ->
	@title = element(protractor.By.model('post.title'))
	@body = element(protractor.By.model('post.body'))
	@image = element(protractor.By.model('post.image'))
	@tags = element(protractor.By.model('post.tags'))
	@published = element(protractor.By.model('post.published'))
	@submitBtn = element(protractor.By.css('button[type="submit"]'))

	@get = ->
		return browser.get(Config.baseurl + '/posts')

	@getNew = ->
		return browser.get(Config.baseurl + '/posts/new')

	@getEdit = (id)->
		return browser.get(Config.baseurl + '/posts/edit/' + id)

	@edit = (id) ->
		@editBtn = element(protractor.By.css("[data-id=\"#{id}\"] .edit"))
		@editBtn.click()

	@form = (p)->
		@title.sendKeys(p.title)
		@body.sendKeys(p.body)
		@image.sendKeys(p.image)
		@tags.sendKeys(p.tags)
		@submitBtn.click()
		browser.sleep(1500)

	@name = 'PostEditPage'


describe 'Chapter3 e2e:', ->
	mainPage = new MainPage()
	describe "the main page", ->
		beforeEach ->
			browser.get('http://localhost:9000')

		it "should have site title and description", ->
			siteTitle = element(protractor.By.binding("App.sitetitle"))
			featureTitle = element(protractor.By.binding("App.feature.title"))
			featureDesc = element(protractor.By.binding("App.feature.body"))

			expect(siteTitle.getText()).toEqual(Config.sitetitle)
			expect(featureTitle.getText()).toEqual(Config.feature.title)
			expect(featureDesc.getText()).toEqual(Config.feature.body)

	describe "the main page", ->
		it "should have site title and description", ->
			expect(mainPage.sitetitle.getText()).toEqual(Config.sitetitle)

		it "should have feature title, image and description", ->
			expect(mainPage.featureTitle.getText()).toEqual(Config.feature.title)
			expect(mainPage.featureDesc.getText()).toEqual(Config.feature.body)

	describe 'the new post page', ->
		postPage = new PostPage()
		beforeEach ->
			postPage.getNew()

		it 'should create a post', ->
			expect(browser.getCurrentUrl()).toEqual(Config.baseurl + '/posts/new')
			postPage.form({title: 'Protractor Test -' + new Date().toString(), body: 'Test post body', tags: 'protractor,angular,test', image: 'http://placehold.it/200'})
			expect(browser.getCurrentUrl()).toEqual(Config.baseurl + '/posts')

		it 'should edit a post', ->
			postPage.edit()
