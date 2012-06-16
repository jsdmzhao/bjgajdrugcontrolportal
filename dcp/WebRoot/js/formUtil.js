/**
  *@author: songwenguang
  *@date: 2008-11-20
  *@version: bate
  *@discription: 表单处理
*/

/*
 * Class constructor 
 */
var Class = {   
    create: function() {   
        return function() {   
            this.initialize.apply(this, arguments);   
        }   
    }   
}

function checkData(obj){
	for(o in obj){
		if($(o) && $(o).maxlength){
			if(obj[o].length > $(o).maxlength){
				alert('数据格式有误。');
				$(o).focus();
				return false;
			}
		}
	}
	return true;
}

Array.prototype.contains = function(str){
	for(var i=0, item; item = this[i]; i++){
		if(item == str){
			return true;
		}
	}
	return false;
}

//instantiation Grid Class
var FormUtil = Class.create();

FormUtil.prototype = {
	//prototype...
	options: {},
	
	//method...
	/**
	 *@ initialize function
	 */
    initialize: function(){
		this.options = $.extend({
			id: null
        }, arguments[0] || {});	
		//$extend(this.options, arguments[0] || {});
	},
	
	//get the form values
	getFormValue: function(form, isCheck){
		var oRet = {};
		var oForm = (typeof form == "object")? form : document.getElementById(form);
		if(!oForm)alert("The form is not already registered in the DOM!");
		if(isCheck == null || isCheck == undefined)isCheck = true;
		for(var i=0, ele; ele=oForm.elements[i]; i++){
			if(ele.tagName == "INPUT"){
				if(['text','hidden','password'].contains(ele.type)){
					if(isCheck && ['text','password'].contains(ele.type) && !this.checkData(ele, ele.value))return;
					oRet[ele.id || ele.name] = ele.value;
				}				
				else if('radio' == ele.type){
					var col = document.getElementsByName(ele.name);	
					for(var index=0, item; item=col[index]; index++){
						if(item.checked==true){
							if(ele.id){
								if(item.id == ele.id)oRet[ele.id] = item.value;
							}else{
								oRet[ele.name] = item.value;
							}
							break;
						}						
					}					
				}
				else if('checkbox' == ele.type){
					var name = ele.name || ele.id;
					var id = ele.id || ele.name;
					var col = document.getElementsByName(name);
					//oRet[name] = [];
					for(var index=0, item; item=col[index]; index++){
						if(item.checked){
							//oRet[name].push(item.value);
							oRet[id] = item.value;
						}
					}					
				}
			}
			else if(ele.tagName == "TEXTAREA"){
				var val = "";
				if(document.all){
					val = ele.innerHTML;
				}else{
					val = ele.value;
				}
				if(isCheck && !this.checkData(ele,val))return;
				oRet[ele.id || ele.name] = val;
			}
			else if(ele.tagName == "SELECT"){
				if(isCheck && !this.checkData(ele, ele.value))return;
				oRet[ele.id || ele.name] = ele.value;
			}
		}
		if(isCheck && !checkData(oRet)){
			return null;
		}
		return oRet;
	},
	
	//set the form values
	setFormValue: function(form, values){
		var oForm = (typeof form == "object")? form : document.getElementById(form);
		if(!oForm)alert("The form is not already registered in the DOM!");
		for(var i=0, ele; ele=oForm.elements[i]; i++){
			if(ele.tagName == "INPUT" && (ele.type == 'radio' || ele.type == 'checkbox')){
				if(values[ele.name] == null)continue;
			}else{
				if(values[ele.id || ele.name] == null)continue;
			}
			if(ele.tagName == "INPUT"){
				if(ele.type == 'text' || ele.type == 'hidden' || ele.type == 'password'){
					ele.value = values[ele.id || ele.name];
				}
				else if('radio' == ele.type){
					var radios = document.getElementsByName(ele.name);					
					for(var index=0, item; item=radios[index]; index++){
						if(values[ele.name] == item.value){
							item.checked = true;
							break;
						}						
					}		
				}
				else if('checkbox' == ele.type){
					var checkboxes = document.getElementsByName(ele.name);
					for(var index=0, item; item=checkboxes[index]; index++){
						if(values[ele.name].contains(item.value))item.checked = true;
						else item.checked = false;
					}
				}
			}
			else if(ele.tagName == "TEXTAREA"){
				if(document.all)ele.innerHTML = values[ele.id || ele.name];
				else ele.value = values[ele.id || ele.name];
			}
			else if(ele.tagName == "SELECT"){
			 
				var items = ele.options; 
				for(var index=0, item; item=items[index]; index++){
					if(item.value == values[ele.id || ele.name]){		
						//lbg
						$('#'+ele.id).combobox('setValue',item.value);					 
						//item.selected = true;
						
						break;
					}
				}		
			}
			
		}
		
		var spans = oForm.getElementsByTagName("SPAN");
		for(var i=0,obj; obj=spans[i]; i++){
			if(obj.className == "formSpan")obj.innerHTML = values[obj.id || obj.name] || "";
		}
	},
	
	checkData: function(ele, value){
		try{ 
			if(ele.nextSibling.innerHTML == '*' && value == ''){
				var text = "";
				if(ele.parentNode.tagName =='DIV'){ 
					if(document.all)text = ele.parentNode.parentNode.previousSibling.innerText;
					else text = ele.parentNode.parentNode.previousSibling.previousSibling.innerHTML;
				}else{ 
					if(document.all)text = ele.parentNode.previousSibling.innerText;
					else text = ele.parentNode.previousSibling.previousSibling.innerHTML;
				}
				ele.focus();
				$.messager.alert('操作提示','请填写[' + text + ']！','warning',function(){						
					ele.focus();
				}); 
				return false;
			}
			//swg 2010-03-07:交验金额
			if(ele.checkType == 'money'){
				var reg = new RegExp(/^(([1-9]\d*)|0)(\.\d{1,2})?$/);
				if(!reg.test(value)){
					ymPrompt.alert("【"+ele.parentNode.previousSibling.innerText+"】格式错误，<br/>请输入数字,小数点后不超过两位",null,null,"提示信息",null);
					return false;
				}
			}
		}catch(e){/*no any condition*/}		
		return true;
	},
	
	getRadioValue: function(name){
		var radios = document.getElementsByName(name);					
		for(var index=0, item; item=radios[index]; index++){
			if(item.checked){
				return item.value;
			}						
		}
	}
	
	
}

/**
  *打印数据对象
  */
function $d(obj,preBlank){
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
		                str+=preBlank+naStr+":"+$d(obj[na],preBlank+pre+" ");	   
		              	
		              }
		              return "\n"+str;
		              break;
		               
	default: {
	return "undefinded\n";
	break;	}
	}
}

function pp(obj){ 
	 var str = ''; 
	 for(var o in obj){
		str += o+" : "+obj[o]+'\n'; 
	 }
	 alert(str);
	 return; 
}


