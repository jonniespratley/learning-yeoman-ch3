'use strict'
angular.module('learningYeomanCh3App').value('Config', Config =
		baseurl: document.location.origin
		sitetitle: "learning yeoman"
		sitedesc: " a starting point for a modern angular.js application."
		sitecopy: "2014 Copywrite"
		version: '0.0.1'
		email: "admin@email.com"
		debug: true
		feature:
			title: 'Chapter 3'
			body: 'A starting point for a modern angular.js application.'
			image: 'http://goo.gl/YHBZjc'
		features: [
			title: "yo"
			body: "yo scaffolds out a new application, writing your Grunt configuration and pulling in relevant Grunt tasks and Bower dependencies that you might need for your build."
			image: "http://goo.gl/g6LO99"
		,
			title: "Bower"
			body: "Bower is used for dependency management, so that you no longer have to manually download and manage your scripts."
			image: "http://goo.gl/GpxBAx"
		,
			title: "Grunt"
			body: "Grunt is used to build, preview and test your project, thanks to help from tasks curated by the Yeoman team and grunt-contrib."
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
)