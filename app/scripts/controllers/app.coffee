'use strict'

###*
 # @ngdoc function
 # @name learningYeomanCh3App.controller:AppCtrl
 # @description
 # # AppCtrl
 # Controller of the learningYeomanCh3App
###
angular.module('learningYeomanCh3App').controller('AppCtrl', ($rootScope, $cookieStore, Config) ->
	$rootScope.name = 'AppCtrl'
	App = angular.copy(Config)
	App.session = $cookieStore.get('App.session')
	window.App = $rootScope.App = App
)