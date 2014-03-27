'use strict'

angular.module('learningYeomanCh3App').directive('markdownEditor', (markdownFilter, $log) ->
	template: '<textarea id="{{$id}}"></textarea>'
	restrict: 'E'
	replace: true
	scope: 
		id: '@'
		ngModel: '='
		onSave: '&'
		onPreview: '&'
	require: '^ngModel'
	link: (scope, element, attrs) ->
		console.log scope
		$(element).markdown
			#savable: true
			#hideable: true
			height: 250
			onShow: (e) ->
				$log.info "Showing " + e.$textarea.prop("tagName").toLowerCase() + "#" + e.$textarea.attr("id") + " as Markdown Editor..."
			onPreview: (e) ->
				$log.info e.getContent()
				previewContent = undefined
				if e.isDirty()
					originalContent = e.getContent()
					previewContent = "Prepended text here..." + "\n" + originalContent + "\n" + "Apended text here..."
				else
					previewContent = "Default content"
					previewContent
			onSave: (e) ->
				$log.info "Saving '" + e.getContent() + "'..."
			onFocus: (e) ->
				$log.info "Focus triggered!"
			onBlur: (e) ->
				$log.info "Blur triggered!"
		
	
	)
