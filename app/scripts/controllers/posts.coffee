'use strict'

angular.module('learningYeomanCh3App').controller 'PostsCtrl', ($scope, posts) ->
  $scope.awesomeThings = [
    'HTML5 Boilerplate'
    'AngularJS'
    'Karma'
  ]
  $scope.name = 'Posts'
  $scope.posts = posts
  $scope.p = null
  $scope.tag = 'generator-angular'
