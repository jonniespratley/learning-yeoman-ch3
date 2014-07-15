var PostPage = function () {
	this.title = element(by.model('post.title'));
	this.body = element(by.model('post.body'));
	this.image = element(by.model('post.image'));
	this.tags = element(by.model('post.tags'));
	this.published = element(by.model('post.published'));
	this.submitBtn = element(by.css('button[type="submit"]'));
	this.getNew = function () {
		return browser.get(Config.baseurl + '/posts/new');
	};
	this.getEdit = function (id) {
		return browser.get(Config.baseurl + '/posts/edit/' + id);
	};
	this.form = function (p) {
		this.title.sendKeys(p.title);
		this.body.sendKeys(p.body);
		this.image.sendKeys(p.image);
		this.tags.sendKeys(p.tags);
		this.submitBtn.click();
	};
	this.name = 'PostEditPage';
};
describe 'Chapter3 e2e:', ->
	mainPage = new MainPage()

describe "the main page", ->
	beforeEach ->
	mainPage.get()

it "should have site title and description", ->
	expect(mainPage.sitetitle.getText())toEqual(Config.sitetitle)
	expect(mainPage.featureTitle.getText()).toEqual(Config.feature.title)
	expect(mainPage.featureDesc.getText()).toEqual(Config.feature.body)

describe 'the new post page', ->
	postPage = new PostPage()
	beforeEach ->
		postPage.getNew()

it 'should create a post', ->
	expect(browser.getCurrentUrl()).toEqual(Config.baseurl + '/posts/new')
	postPage.form({
		title: 'Test -' + new Date().toString(),
		body: 'Test post body', tags: 'protractor,angular,test', image: 'http://placehold.it/200'})
	expect(browser.getCurrentUrl()).toEqual(Config.baseurl + '/posts')
