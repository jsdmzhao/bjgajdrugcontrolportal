/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function( config )
{
	 // Define changes to default configuration here. For example:
	 // config.language = 'fr';
	 // config.uiColor = '#AADC6E';
	
	  config.language = 'zh-cn'; //配置语言 
	 // config.uiColor = '#FFF'; //背景颜色 
	 // config.width = 400; //宽度 
	 // config.height = 400; //高度 
	 // 取消 “拖拽以改变尺寸”功能 
	 // config.resize_enabled = false; 
	 // 使用基础工具栏 
	 // config.toolbar = "Basic"; 
	 // 使用全能工具栏 
	 //config.toolbar = "Full"; 
	 //使用自定义工具栏 
	  config.toolbar = 
	  [ 
		  ['Source', 'Preview', '-'], 
		  ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', ], 
		  ['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'], 
		  ['Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar','PageBreak'], 
		  ['Bold', 'Italic', 'Underline', '-', 'Subscript', 'Superscript'], 
		  '/', 
		  ['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote'], 
		  ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'], 
		  ['Link', 'Unlink'], 
		  ['Format', 'Font', 'FontSize'], 
		  ['TextColor', 'BGColor'], 
		  ['Maximize', 'ShowBlocks'] 
	  ];
	 
	   //config.toolbar = 'Basic';    //名字为“Basic”的toolbar（工具栏）的具体设定。只保留以下功能：    
	   config.toolbar_Basic =  [        
	 		['Font', 'FontSize'] , //样式栏：字体、大小        
	 		['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] , //对齐栏：左对齐、中心对齐、右对齐、两端对齐        
	 		['TextColor', 'BGColor'], //颜色栏：文本颜色、背景颜色        
	 		['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat'], //基本样式栏：加粗、倾斜、下划线、删除线、下标、上标、移除样式        
	 		['Image', 'Flash', 'Table', 'HorizontalRule'], //插入栏：图像、flash、表格、水平线        
	 		['Link', 'Unlink'], //超链接栏：增加超链接、取消超链接        
	 		['Source']//源代码栏：查看源代码    
	    ];
	    //config.skin = 'kama';// 界面v2,kama,office2003
	    config.font_names='宋体/宋体;黑体/黑体;仿宋/仿宋_GB2312;楷体/楷体_GB2312; 隶书/隶书;幼圆/幼圆;微软雅黑/微软雅黑;'+ config.font_names;

	 // config.htmlEncodeOutput = true;
	 // config.startupOutlineBlocks = false;
	 
	 // 在 CKEditor 中集成 CKFinder，注意 ckfinder 的路径选择要正确。 
	 config.filebrowserBrowseUrl = 'ckfinder/ckfinder.html',
	 config.filebrowserImageBrowseUrl = 'ckfinder/ckfinder.html?type=Images',
	 config.filebrowserFlashBrowseUrl = 'ckfinder/ckfinder.html?type=Flash',
	 config.filebrowserUploadUrl = 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
	 config.filebrowserImageUploadUrl = 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
	 config.filebrowserFlashUploadUrl = 'ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash',
	 config.filebrowserWindowWidth = '1000',
	 config.filebrowserWindowHeight = '600'

};
