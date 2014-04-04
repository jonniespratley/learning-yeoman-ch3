'use strict'

angular.module('learningYeomanCh3App').directive('markdownEditor', (markdownFilter, $log) ->
	template: '<textarea id="editor"></textarea>'
	restrict: 'E'
	replace: true
	scope: 
		ngModel: '='
		onSave: '&'
		onPreview: '&'
	require: '^ngModel'
	link: (scope, element, attrs, ngModel) ->
		console.log ngModel
		editor = $(element).markdown
			savable: true
			#hideable: true
			height: 250
			onShow: (e) ->
				#e.disableButtons('preview')
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
				ngModel.$setViewValue(e.getContent())
				scope.onSave(e.getContent()) if scope.onSave
			onFocus: (e) ->
				$log.info "Focus triggered!"
			onBlur: (e) ->
				$log.info "Blur triggered!"
	
	)
