window.Config =
	baseurl: document.location.origin
	sitetitle: "learning yeoman"
	sitedesc: "The tutorial for Chapter 3"
	sitecopy: "2014 Copyright"
	version: '1.0.0'
	email: "admin@email.com"
	debug: true
	feature:
		title: 'Chapter 3'
		body: 'A starting point for a modern angular.js application.'
		image: 'http://goo.gl/YHBZjc'
	features: [
		title: "yo"
		body: "yo scaffolds out a new application."
		image: "http://goo.gl/g6LO99"
	,
		title: "Bower"
		body: "Bower is used for dependency management. "
		image: "http://goo.gl/GpxBAx"
	,
		title: "Grunt"
		body: "Grunt is used to build, preview and test your project."
		image: "http://goo.gl/9M00hx"
	]
	session:
		authorized: false
		user: null
	layout:
		header: "views/_header.html"
		content: "views/_content.html"
		footer: "views/_footer.html"
	menu: [
		title: "Home", href: "/"
	,
		title: "About", href: "/about"
	,
		title: "Posts", href: "/posts"
	]