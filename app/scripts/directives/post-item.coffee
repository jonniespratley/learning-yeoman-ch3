'use strict'
angular.module('learningYeomanCh3App').directive('postItem', () ->
  scope: 
    post: '='
  template: '''
  <div class="media post" data-id="{{post._id}}">
    <a class="pull-left" ng-href="#/posts/{{post._id}}">
      <img class="media-object img-thumbnail" alt="{{post.title}}" ng-src="{{post.image}}" />
    </a>
    <div class="media-body">
      <h4 class="media-heading">{{post.title}}</h4>
      <p>{{post.body}}</p>
    </div>
  </div>
  '''
  restrict: 'E'
  replace: true
  link: (scope, element, attrs) ->
    
  )