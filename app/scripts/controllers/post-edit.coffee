'use strict'
angular.module('learningYeomanCh3App').controller 'PostEditCtrl', ($scope, post) ->
  $scope.name = 'PostEdit'
  $scope.post = post