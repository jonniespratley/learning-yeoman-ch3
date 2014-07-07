Config =
	baseurl: "http://127.0.0.1:9000/#"
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
		return browser.get(Config.baseurl)
	@name = 'MainPage'

#Post Edit Page
PostPage = ->
	@url = Config.baseurl+ '/posts'
	@title = element(protractor.By.model('post.title'))
	@body = element(protractor.By.model('post.body'))
	@image = element(protractor.By.model('post.image'))
	@tags = element(protractor.By.model('post.tags'))
	@published = element(protractor.By.model('post.published'))
	@submitBtn = element(protractor.By.css('button[type="submit"]'))
	@addBtn = element(protractor.By.partialButtonText('Add New'))

	#Load the /posts page
	@get = ->
		return browser.get(@url)

	#Load the /posts/new page
	@getNew = ->
		@get()
		browser.sleep(1000)
		@addBtn.click()

	#Load the /posts/edit/ID page
	@getEdit = (id)->
		return browser.get(Config.baseurl + '/posts/edit/' + id)

	#Handle entering values into the form.
	@form = (p)->
		@title.sendKeys(p.title)
		@body.sendKeys(p.body)
		@image.sendKeys(p.image)
		@tags.sendKeys(p.tags)
		@submitBtn.click()

	@name = 'PostEditPage'


describe 'Learning Yeoman - Chapter 3 e2e:', ->

	describe "the main page", ->
		mainPage = new MainPage()

		beforeEach ->
			mainPage.get()

		it "should have site title, feature title, image and description", ->
			expect(mainPage.sitetitle.getText()).toEqual(Config.sitetitle)
			expect(mainPage.featureTitle.getText()).toEqual(Config.feature.title)
			expect(mainPage.featureDesc.getText()).toEqual(Config.feature.body)

	describe 'the new post page', ->
		postPage = new PostPage()

		beforeEach ->
			postPage.get()

		it 'should create a post', ->
			postPage.addBtn.click()
			postPage.form({title: 'Test', body: 'Test post body', tags: 'protractor,test', image: ''})
			browser.sleep(1500)
			expect(browser.getCurrentUrl()).toEqual(Config.baseurl + '/posts')
