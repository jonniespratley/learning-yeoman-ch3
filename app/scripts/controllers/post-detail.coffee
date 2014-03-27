'use strict'
angular.module('learningYeomanCh3App').controller 'PostDetailCtrl', ($scope, post) ->
  $scope.name = 'PostDetail'
  $scope.post = post