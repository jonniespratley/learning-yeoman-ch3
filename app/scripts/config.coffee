window.Config =
	baseurl: document.location.origin
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
		image: "http://a481ab4f6ea4dd65cff0-b2b68ced242ecf1cb9bc1021688e3775.r49.cf1.rackcdn.com/img/learning-yeoman/feature-html5.png"
	,
		id: 2
		title: "AngularJS"
		body: "Framework of choice is Angular"
		image: "http://a481ab4f6ea4dd65cff0-b2b68ced242ecf1cb9bc1021688e3775.r49.cf1.rackcdn.com/img/learning-yeoman/feature-angular.png"
	,
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
		content:"views/_content.html"
		footer: "views/_footer.html"
	menu: [
		title: "Home"
		href: "/"
	,
		title: "About"
		href: "/about"
	,
		title: "Posts"
		href: "/posts"
	]
