/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	config.enterMode = CKEDITOR.ENTER_BR;
	config.toolbar = [
		{
			name: 'document',
			groups: [ 'mode', 'document', 'doctools' ],
			items: [ 'Source', '-', 'Templates' ]
		},
		{
			name: 'clipboard',
			groups: [ 'clipboard', 'undo' ],
			items: [ 'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo' ]
		},
		{
			name: 'editing',
			groups: [ 'find', 'selection', 'spellchecker' ],
			items: [ 'Find', 'Replace', '-', 'SelectAll']
		},
		{
			name: 'tools',
			items: [ 'Maximize']
		},
		'/',
		{
			name: 'basicstyles',
			groups: [ 'basicstyles', 'cleanup' ],
			items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ]
		},
		{
			name: 'paragraph',
			groups: [ 'list', 'indent', 'blocks', 'align' ],
			items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock' ]
		},
		{
			name: 'links',
			items: [ 'Link', 'Unlink' ]
		},
		{
			name: 'insert',
			items: [ 'Image', 'Table', 'HorizontalRule' ]
		},
		'/',
		{
			name: 'styles',
			items: [ 'Styles', 'Format', 'Font', 'FontSize' ]
		},
		{
			name: 'colors',
			items: [ 'TextColor', 'BGColor' ]
		}
	];
};