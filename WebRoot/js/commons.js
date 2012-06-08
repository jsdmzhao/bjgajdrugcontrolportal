

function commInit(){
	DWREngine.setAsync(false);
}
function commDesp(){
	DWREngine.setAsync(true);
}
/**
  *打印数据对象
  */
function objectDetail(obj,preBlank){
	var str="";
	if(!preBlank)preBlank = "";
	switch(typeof(obj)){
		case "number":
		case "string":
		case "boolean": return obj+"\n";break;
		case "object":
		              for(var na in obj){
		              	var naStr=na.toString();
		              	if(parseInt(naStr.substr(0,1))>=0) naStr="["+na+"]";
		              	var len=naStr.length;
		              	var pre="";
		              	for(var i=0;i<len;i++)
		              	   pre+=" ";
		                str+=preBlank+naStr+":"+objectDetail(obj[na],preBlank+pre+" ");	   
		              	
		              }
		              return "\n"+str;
		              break;
		               
	default: return "undefinded\n";break;	
	}
}

function objPrint(obj){
    var str = ''; 
	 for(var na in obj){
		str += na+"    :    "+obj[na]+'\n'; 
	 }
	 alert(str);

}
/******null转换为''*******/
function objFilter(obj){
    var str = ''; 
	 for(var na in obj){
	 		//alert(obj[na]);
		 if(obj[na]==null){
		   obj[na] = '';
		 }
			
	 }
	 return obj;
	 //alert(str);

}


//下载文件
function download_File(docId, docName)
{
   	if(document.getElementById("formDownload")==null){
	document.body.insertAdjacentHTML("beforeEnd",'<span style="display:none">'
	              +'<form name="formDownload" action="/jpems/DownloadServlet" method="post">'
						    +'<input type="hidden" name="attachmentId" value="" />'
						    +'<input type="hidden" name="attachmentName" value="" />'
					      +'</form></span>');
			}
	document.getElementById("attachmentId").value = docId;
	document.getElementById("attachmentName").value = docName;
  	document.getElementById("formDownload").submit();
}


//下载文件bck
function download_File_bck(docId, docName)
{
   	var sql = "select a.file_name, b.upload_path from upload_file a, upload_file_config b " +
				"where a.file_id="+docId+" and a.resource_type=b.resource_type";
	SQLUtils.query(sql, function(arrFile){
		if(arrFile && arrFile.length > 0){
			var uploadPath = arrFile[0].uploadPath;
			if(!uploadPath || uploadPath == ""){
				if(ymPrompt)ymPrompt.alert("上传路径不存在，请确认后再上传。",null,null,"提示信息",null);
				return;
			}
			
			if(document.getElementById("formDownload")==null){
				document.body.insertAdjacentHTML("beforeEnd",'<span style="display:none">'
			              +'<form name="formDownload" action="/jpems/DownloadServlet" method="post">'
								    +'<input type="hidden" name="attachmentId" value="" />'
								    +'<input type="hidden" name="attachmentName" value="" />'
								    +'<input type="hidden" name="uploadPath" value="" />'
							      +'</form></span>');
					}
			document.getElementById("attachmentId").value = docId;
			document.getElementById("attachmentName").value = docName;
			document.getElementById("uploadPath").value = uploadPath;
		  	document.getElementById("formDownload").submit();
		}else{
			if(ymPrompt)ymPrompt.alert("文件不存在。",null,null,"提示信息",null);
			return;
		}
		
	});
}

//显示已上传的文件
function showUploadFile(uploadFileId){
	window.showModalDialog("/jpems/swg/sys/note/UploadFileList.jsp", uploadFileId, "center:yes; dialogWidth:280px; dialogHeight:200px; resizable:no; scroll:no;");
}

//转换成日期格式 yyyy-MM-dd
function toLocaleDate(UTCDate) {
	 
	if(typeof UTCDate=="string")  return UTCDate;  
    if(UTCDate == '' || UTCDate == null || UTCDate == undefined)return '';       
    var date = UTCDate;   
    var y = date.getFullYear(); 
    if(y<10) y = '0'+y;   
    var m = date.getMonth()+1;
    if(m<10) m = '0'+m;   
    var d = date.getDate();
    if(d<10) d = '0'+d; 
    var localDate = y+"-"+m+"-"+d; 
	return localDate; 
	
}   


//转换成日期格式 yyyy-MM-dd && yyyy-MM-dd HH24-mm-ss
//valid = 1  yyyy-MM-dd  ; valid = 2 yyyy-MM-dd HH24-mm-ss ;
function toLocaleDatePre(UTCDate,valid) {
	 
  if(typeof UTCDate=="string")  return UTCDate;  
  if(UTCDate == '' || UTCDate == null || UTCDate == undefined)return ''; 
  if(valid == '' || valid == null || valid == undefined)return ''; 
  if(valid == "1"){
	  
	  var date = UTCDate; 
	  var y = date.getFullYear();
	  if(y<10) y = '0'+y;   
	  var m = date.getMonth()+1;
	  if(m<10) m = '0'+m;   
	  var d = date.getDate();
	  if(d<10) d = '0'+d;  
	  var localDate = y+"-"+m+"-"+d; 
	  return localDate; 	  
  }else if(valid == "2"){
	  
	  var date = UTCDate; 
	  var y = date.getFullYear();
	  if(y<10) y = '0'+y;   
	  var m = date.getMonth()+1;
	  if(m<10) m = '0'+m;   
	  var d = date.getDate();
	  if(d<10) d = '0'+d;  

	 var hours = date.getHours();
	 var minutes = date.getMinutes();
	 var seconds = date.getSeconds(); 
	 hours = hours < 10 ? '0'+hours : hours ;
	 minutes = minutes < 10 ? '0'+minutes : minutes ;
	 seconds = seconds < 10 ? '0'+seconds : seconds ;		
	 var localDate = y+"-"+m+"-"+d+" "+hours+":"+minutes+":"+seconds; 
	 
	 return localDate; 	  
  }else{
	  alert("参数有误！目前只支持 1 , 2。");
	  return '';
  }
	
} 

/**
 * 验证变量是否有效
 * 有效 true
 * 
 * */
function isValid(val){
	
	if(val && val != ''){
		return true;
	}else{
		return false;
	}
}
/** 
 * 生成select标签的option选项
 * list对象中的默认属性名为：text , value 
 * @param selectCode select的属性名
 * @param list 数据list ,数组对象
 * @param selectedValue 默认为selected的值 
 * 调用：
 *      createSelectTag1(selectCode,list,"2")
 * */
function createSelectTag1(selectCode,list,selectedValue,title){

    var _selectCode = document.getElementById(selectCode);
    _selectCode.options.length = 0;//类似于removeAll
    var _temp = document.createElement("OPTION");
	_temp.text = "-----请选择"+title+"-----";
	_temp.value = ""; 
	_selectCode.options.add(_temp);	
	
	for(var i = 0;i<list.length;i++){
		_temp = document.createElement("OPTION");
		if(list[i].value == selectedValue){
			_temp.text = list[i].text;
			_temp.value = list[i].value;
			_temp.selected = true;	
			_selectCode.options.add(_temp);	
		}else{ 
			_temp.text = list[i].text;
			_temp.value = list[i].value;	
			_selectCode.options.add(_temp);	
		}				
	} 
}


/** 
 * 生成select标签的option选项 
 * @param selectCode select的属性名
 * @param tex option显示值的名称
 * @param val option实际值的名称
 * @param list 数据list ,数组对象
 * @param selectedValue 默认为selected的值 
 * 调用：
 *      createSelectTag2(selectCode,'tex','val',list,"2")
 * */

function createSelectTag2(selectCode,tex,val,list,selectedValue,title){
	
    var _selectCode = document.getElementById(selectCode);
   
    _selectCode.options.length = 0;  //类似于removeAll
    var _temp = document.createElement("OPTION");
	_temp.text = "-----请选择"+title+"-----";
	_temp.value = ""; 
	_selectCode.options.add(_temp);	
	
	
		for(var i = 0;i<list.length;i++){
			_temp = document.createElement("OPTION");
			if(list[i][val].Trim() == selectedValue.Trim()){
				_temp.text = list[i][tex].Trim();
				_temp.value = list[i][val].Trim();
				_temp.selected = true;	
				_selectCode.options.add(_temp);	
			}else{ 
				_temp.text = list[i][tex].Trim();
				_temp.value = list[i][val].Trim();	
				_selectCode.options.add(_temp);	
			}				
		}  
}



/** 
 * 生成select标签的option选项 
 * @param selectCode select的属性名
 * @param tex option显示值的名称
 * @param val option实际值的名称
 * @param list 数据list ,数组对象
 * @param selectedValue 默认为selected的值  selectedValue是多个编号由逗号隔开的字符串
 * 调用：
 *      createSelectTag3(selectCode,'tex','val',list,"2")
 * */

function createSelectTag3(selectCode,tex,val,list,selectedValue,title){
	
    var _selectCode = document.getElementById(selectCode);
   
    _selectCode.options.length = 0;  //类似于removeAll
    var _temp = document.createElement("OPTION");
//	_temp.text = "-----请选择"+title+"-----"; 
//	_temp.value = ""; 
//	_selectCode.options.add(_temp);	
 
		
		for(var i = 0;i<list.length;i++){
			_temp = document.createElement("OPTION");
			var flag = false;
			for(var j=0;j<selectedValue.length;j++){ 
					
				if(list[i][val] == selectedValue[j]){
					_temp.text = list[i][tex];
					_temp.value = list[i][val];
					_temp.selected = true;	
					_selectCode.options.add(_temp);	
					flag = true;
				} 
			} 
			if(flag == false){
				_temp.text = list[i][tex];
				_temp.value = list[i][val];	
				_temp.selected = false;	
				_selectCode.options.add(_temp);	
			}
		}  
}



/** 
 * 生成select标签的option选项 
 * @param selectCode select的属性名
 * @param tex option显示值的名称
 * @param val option实际值的名称
 * @param list 数据list ,数组对象
 * @param selectedValue 默认为selected的值 
 * 调用：
 *      createSelectTag4(selectCode,'tex','val',list,"2")
 * */

function createSelectTag4(selectCode,tex,val,list,selectedValue,title){
	
    var _selectCode = document.getElementById(selectCode);
   
    _selectCode.options.length = 0;  //类似于removeAll
    var _temp = document.createElement("OPTION");
//	_temp.text = "-----请选择"+title+"-----";
//	_temp.value = ""; 
//	_selectCode.options.add(_temp);	
	
	
		for(var i = 0;i<list.length;i++){
			_temp = document.createElement("OPTION");
			if(list[i][val].Trim() == selectedValue.Trim()){
				_temp.text = list[i][tex].Trim();
				_temp.value = list[i][val].Trim();
				_temp.selected = true;	
				_selectCode.options.add(_temp);	
			}else{ 
				_temp.text = list[i][tex].Trim();
				_temp.value = list[i][val].Trim();	
				_selectCode.options.add(_temp);	
			}				
		}  
}




 
/** 
 * 生成input radio标签 
 * @param divId div的id
 * @param tex option显示值的名称
 * @param val option实际值的名称
 * @param list 数据list ,数组对象
 * @param selectedValue 默认为selected的值 
 * 调用：
 *      createSelectTag2(selectCode,'tex','val',list,"2")
 * */

function createRadioTag(selectCode,tex,val,list,selectedValue,title){
	
    var _selectCode = document.getElementById(selectCode);
   
    _selectCode.options.length = 0;  //类似于removeAll
    var _temp = document.createElement("OPTION");
	_temp.text = "请选择"+title+"";
	_temp.value = ""; 
	_selectCode.options.add(_temp);	
	
	
		for(var i = 0;i<list.length;i++){
			_temp = document.createElement("OPTION");
			if(list[i][val].Trim() == selectedValue.Trim()){
				_temp.text = list[i][tex].Trim();
				_temp.value = list[i][val].Trim();
				_temp.selected = true;	
				_selectCode.options.add(_temp);	
			}else{ 
				_temp.text = list[i][tex].Trim();
				_temp.value = list[i][val].Trim();	
				_selectCode.options.add(_temp);	
			}				
		} 
	
}

//初始化 select 标签
function initSelect(dictcontcode,dictcode,selId,title){
	if(dictcontcode == null || dictcontcode == ''
	    || dictcontcode == undefined){
	    	alert("值为空！！");
	    	return; 
	}  
	Plat_dictSvc.queryDictcontcode(dictcontcode,function(oList){
		
		createSelectTag2(selId,"dictcont","dictcode",oList,dictcode,title);
	});
}




//初始化 radio 标签
function initRadio(dictcontcode,spanId,columCode,trNum){ 
	if(dictcontcode == null || dictcontcode == ''
	    || dictcontcode == undefined){
	    	alert("值为空！！");
	    	return; 
	} 
	Plat_dictSvc.queryDictcontcode(dictcontcode,function(oList){
		//createRadios('jkpj_jbkz_lb_span',oList,'jkpj_jbkz_lb','dictcont','dictcode','2');
		createRadios(spanId,oList,columCode,'dictcont','dictcode','2',trNum);
	});
}
//初始化 Href 标签
function initHref(dictcontcode,spanId,columCode,trNum){ 
	if(dictcontcode == null || dictcontcode == ''
	    || dictcontcode == undefined){
	    	alert("值为空！！");
	    	return; 
	} 
	Plat_dictSvc.queryDictcontcode(dictcontcode,function(oList){
		//createRadios('jkpj_jbkz_lb_span',oList,'jkpj_jbkz_lb','dictcont','dictcode','2');
		createHref(spanId,oList,'dictcont','dictcode','2',trNum);
	});
}
//初始化 Checkboxs 标签
function initCheckbox(dictcontcode,spanId,columCode,trNum){ 

	if(dictcontcode == null || dictcontcode == ''
	    || dictcontcode == undefined){
	    	alert("值为空！！");
	    	return; 
	} 
	Plat_dictSvc.queryDictcontcode(dictcontcode,function(oList){
		//createRadios('jkpj_jbkz_lb_span',oList,'jkpj_jbkz_lb','dictcont','dictcode','2');
		createCheckboxs(spanId,oList,columCode,'dictcont','dictcode','2',trNum);
	});
}
function _initCheckbox(dictcontcode,spanId,columCode,trNum){ 

	if(dictcontcode == null || dictcontcode == ''
	    || dictcontcode == undefined){
	    	alert("值为空！！");
	    	return; 
	} 
	Plat_dictSvc.queryDictcontcode(dictcontcode,function(oList){
		//createRadios('jkpj_jbkz_lb_span',oList,'jkpj_jbkz_lb','dictcont','dictcode','2');
		_createCheckboxs(spanId,oList,columCode,'dictcont','dictcode','2',trNum);
	});
}
/** 
 * <b> Add input[checkbox] to page from an array</b><br/> 
 * @param seatId
 * @param array - array[Object]. 
 * @param radioName - input[checkbox] name. 
 * @param tex - display text. 
 * @param val - input[checkbox] value.  
 * @param checkedVal - default checked value.
 * @param trNum - tr number.
 * <br/>
 *<b> Example：</b>addCheckBoxs(seatId,array,'isValid','tex','val','2','10')
 * */
 function createCheckboxs(seatId,array,checkboxName,tex,val,checkedVal,trNum){ 
	 
	 
	 var _trNum = trNum;
	 var str1 = "&nbsp;&nbsp;<label><input type=\"checkbox\" name=\""; //填写name值
	 var str2 = "\" value=\""; //填写value值
	 var str3 = "\" />&nbsp;&nbsp;"; //填写text值
	  var str4 = "</label>";
	 var _selectId = document.getElementById(seatId);	
	   
	 var str = "";
	 for(var i = 0; i < array.length; i++){
		 str += str1+ checkboxName+
		 		str2+""+array[i][val].Trim()+""+
		 		str3+""+array[i][tex].Trim()+"  "+str4;  	
		 if(_trNum && (i+1)%_trNum == 0 ){
			 str += "<br/>"; 
		 } 						
	 } 
	 str +="";
	 _selectId.innerHTML = str;
}
function _createCheckboxs(seatId,array,checkboxName,tex,val,checkedVal,trNum){ 
	 
	 //colspan=\"7\"
	 var _trNum = trNum;
	 var str1 = "&nbsp;&nbsp;<input type=\"checkbox\" name=\""; //填写name值
	 var str2 = "\" id='1' value=\""; //填写value值
	 var str3 = "\" />&nbsp;&nbsp;"; //填写text值
	 var strTabB = "<table width=\"100%\">"
	 var strTrB = "<tr>";
	 var strTdBC = "<td  width=\"95%\">";
	 var strTdB = "<td align=\"center\">"
	 var strTdE = "</td>";
	 var strTrE = "</tr>";
	 var strTabE = "</table>"
	 var _selectId = document.getElementById(seatId);	
	   
	 var str = "";
	 str += strTabB;
	 for(var i = 0; i < array.length; i++){
	 	 //alert(array[i][val].Trim());
		 str += strTrB+""+strTdBC+""+array[i][tex].Trim()+""+strTdE+""+
		 		strTdB+""+str1+checkboxName+
		 		str2+""+array[i][val].Trim()+""+
		 		str3+""+strTdE+strTrE+"";  	
		 if(_trNum && (i+1)%_trNum == 0 ){
			 str += "<br/>"; 
		 } 						
	 }
	 str += strTabE;
	 str +="";
	 _selectId.innerHTML = str;
}
//生成链接
function createHref(seatId,array,tex,val,checkedVal,trNum){ 
	  //<a id="lbtn2" href="javascript:__doPostBack('lbtn2','')" style="color:#F60;font-weight:bold;">12月龄</a>
	 var _trNum = trNum;
	 //var strHrefB = "<a href=\"javascript:__doPostBack('"+array[i][val].Trim()+"')\" ";
	 var strw = ">";
	 var strStyle = "style=\"color:#F60;font-weight:bold;\">";
	 var strHrefE = "</a>|"
	 var _selectId = document.getElementById(seatId);	
	   
	 var str = "";
	 for(var i = 0; i < array.length; i++){
	 var strHrefB = "<a href=\"javascript:__doPostBack('"+array[i][val].Trim()+"')\" ";
		 	if(i==0){
		 		str += strHrefB+""+strStyle+""+array[i][tex].Trim()+""+strHrefE;
		 	}else{
		 		str += strHrefB+""+strw+""+array[i][tex].Trim()+""+strHrefE;
		 	}
		 if(_trNum && (i+1)%_trNum == 0 ){
			 str += "<br/>"; 
		 } 						
	 } 
	 str +="";
	 alert(str);
	 _selectId.innerHTML = str;
	 alert(_selectId.innerHTML);
}
/** 
 * <b> Add input[radio] to page from an array or map.</b><br/> 
 * @param selectId
 * @param array - array[Object]. 
 * @param radioName - input[radio] name. 
 * @param tex - display text. 
 * @param val - input[radio] value.  
 * @param checkedVal - default checked value.
 * <br/>
 *<b> Example：</b>createRadios('selectId',array,'isValid','tex','val','2')
 * */
function createRadios(selectId,array,radioName,tex,val,checkedVal,trNum){ 

	 var _trNum = trNum;
	 var str1 = "<label><input type=\"radio\" name=\""; //填写name值
	 var str2 = "\" value=\""; //填写value值
	 var str3 = "\" />"; //填写text值
	 var str4 = "</label>";
	 var _selectId = document.getElementById(selectId);	
	   
	 var str = "";
	 for(var i = 0; i<array.length; i++){
		 str += str1+ radioName+
		       str2+""+array[i][val].Trim()+""+
		       str3+""+array[i][tex].Trim()+"  "+str4;  	
		 if(_trNum && (i+1)%_trNum == 0 ){
			 str += "<br/>"; 
		 } 								
	 } 
	 str +="";
	 _selectId.innerHTML = str;
	 
	 
    /*	
   	
   	for(var i = 0; i<array.length; i++){
		var baseNode = document.createElement('input');
	   	var type = document.createAttribute('type');type.value = 'radio';   	
	   	var name = document.createAttribute('name');name.value = radioName;
	   	var val = document.createAttribute('value');val.value = 'test1';
	   		
	   	baseNode.setAttributeNode(type);
	   	baseNode.setAttributeNode(name);
	   	baseNode.setAttributeNode(val);
	   	
	   	var titleNode = document.getElementById(selectId); 
	   	titleNode.appendChild(baseNode);				
	} 
	 */
	     	
	 
}  
function clearSelectTag(changeSelName){
    var _selectCode = document.getElementById(changeSelName);
    _selectCode.options.length = 0;//类似于removeAll	
}



//去除左右空格
String.prototype.Trim = function() {   
	return this.replace(/(^\s*)|(\s*$)/g, "");
}

/**@private 获得浏览器相关信息
 * @return  Object{name,version,userAgent}
 * @deprecated IE6,IE7,IE8,FF(火狐),chrome(谷歌),safari(苹果),opera(朱雀) 
 * */
function getBrowser(){ 
	
   var Sys = {};  var s; 
   var ua = navigator.userAgent.toLowerCase();  
   (s = ua.match(/msie ([\d]+)/)) ? Sys.ie = s[1] :   
   (s = ua.match(/firefox\/([\d]+)/)) ? Sys.firefox = s[1] :   
   (s = ua.match(/chrome\/([\d]+)/)) ? Sys.chrome = s[1] :   
   (s = ua.match(/opera.([\d]+)/)) ? Sys.opera = s[1] :   
   (s = ua.match(/version\/([\d]+).*safari/)) ? Sys.safari = s[1] : 0;   
  
   //以下进行测试   
   /* if (Sys.ie) this.debug('IE: ' + Sys.ie);   //IE6 IE7 IE8 
   if (Sys.firefox)this.debug('Firefox: ' + Sys.firefox);   
   if (Sys.chrome)this.debug('Chrome: ' + Sys.chrome);   
   if (Sys.opera)this.debug('Opera: ' + Sys.opera);   
   if (Sys.safari)this.debug('Safari: ' + Sys.safari);   
   */
	   	var mozilla = {};
	   	     if (Sys.ie == '6'){ mozilla.name = 'IE'; mozilla.version = '6';}
	   	else if (Sys.ie == '7'){mozilla.name = 'IE'; mozilla.version = '7';}
	   	else if (Sys.ie == '8'){mozilla.name = 'IE'; mozilla.version = '8';}
	   	else if (Sys.firefox){mozilla.name = 'Firefox'; mozilla.version = Sys.firefox;}		
	   	else if (Sys.chrome){ mozilla.name = 'Chrome'; mozilla.version = Sys.chrome;}
	   	else if (Sys.safari){mozilla.name = 'Safari'; mozilla.version = Sys.safari;}
	   	else if (Sys.opera){mozilla.name = 'Opera'; mozilla.version = Sys.opera;}  
	   	mozilla.userAgent = ua; //userAgent 用户代理人
	   	return mozilla ;
}
/** @private 宽度自适应浏览器 (以IE为标准)*/
function getWidth (num){	 
	   var number = num;
	   if(number <= 0)return number;
	   var maz = this.getBrowser().name;
	   if(maz == "IE"){
		   number = number;
	   }else if(maz == "Firefox"){
		   number = number -15;
	   }else if(maz == "Chrome"){
		   number = number -8;
	   }else if(maz == "Safari"){
		   number = number -8;
	   }else if(maz == "Opera"){
		   number = number -8;
	   }
	   return number;
}
/** @private 高度自适应浏览器 (以IE为标准)*/
function getHeight(num){	 
	   var number = num;
	   if(number <= 0)return number;
	   var maz = this.getBrowser().name;
	   if(maz == "IE"){
		   number = number;
	   }else if(maz == "Firefox"){
		   number = number -8;
	   }else if(maz == "Chrome"){
		   number = number -8;
	   }else if(maz == "Safari"){
		   number = number -8;
	   }else if(maz == "Opera"){
		   number = number -8;
	   }
	   return number;
}
/** @private 小数比例(0.3)自适应浏览器 (以IE为标准)*/
function getDecimal(num){	 
	   var number = num;
	   if(number <= 0)return number;
	   var maz = this.getBrowser().name;
	   if(maz == "IE"){
		   number = number;
	   }else if(maz == "Firefox"){
		   number = number -25;
	   }else if(maz == "Chrome"){
		   number = number -0.03;
	   }else if(maz == "Safari"){
		   number = number -0.03;
	   }else if(maz == "Opera"){
		   number = number -0.03;
	   }
	   return number;
} 
/**
 * 有效标志转换器
 * 返回数据 ： 有效 ， 无效
 * @param arrOrg  对象
 * @param valid   与数据库同步的JS对象属性名
 * @param validName  自定义的JS对象属性名
 * */
function createValid(arrOrg,valid,validName){

	if(arrOrg && arrOrg.length>0){	
		for(var i=0;i<arrOrg.length;i++){
		  if(arrOrg[i][valid] == 1) {
			  arrOrg[i][validName] = '有效';
		  }else{
			  arrOrg[i][validName] = '无效';
		  }
		}
	}
}
/**
 * 1-是、0-否转换器
 * 返回数据 ： 有效 ， 无效
 * @param arrOrg  对象
 * @param valid   与数据库同步的JS对象属性名
 * @param validName  自定义的JS对象属性名
 * */
 function createIsandNo(arrOrg,valid,validName){

	if(arrOrg && arrOrg.length>0){	
		for(var i=0;i<arrOrg.length;i++){
		  if(arrOrg[i][valid] == 1) {
			  arrOrg[i][validName] = '是';
		  }else{
			  arrOrg[i][validName] = '否';
		  }
		}
	}
}
/**
 * 性别判断转换器
 * 返回数据 ： 有效 ， 无效
 * @param arrOrg  对象
 * @param valid   与数据库同步的JS对象属性名
 * @param validName  自定义的JS对象属性名
 * */
  function createSex(arrOrg,valid,validName){

	if(arrOrg && arrOrg.length>0){	
		for(var i=0;i<arrOrg.length;i++){
		  if(arrOrg[i][valid] == 0) {
			  arrOrg[i][validName] = '未知的性别';
		  }else
		  if(arrOrg[i][valid] == 1){
			  arrOrg[i][validName] = '男性';
		  }else
		  if(arrOrg[i][valid] == 2){
			  arrOrg[i][validName] = '女性';
		  }else
		  {
			  arrOrg[i][validName] = '未说明的性别';
		  }
		}
	}
}
