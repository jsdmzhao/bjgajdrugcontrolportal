package com.unis.app.message.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.message.model.Message;

@Controller
@Scope(value="prototype")
public class MessageAction {

	private Message message;

	@Autowired
	private AbsServiceAdapter<Integer> messageService = null;
	
	
	public String messageSave(Map<String, String> sqlParamMap){
		
		/***
		 * 
		 * 
		
		String jsrStr = (String) sqlParamMap.get("c_jsr");
		if(StringUtils.isNotEmpty(jsrStr)){
			String[] jsrs = jsrStr.split(",");
			List<Message> list = new ArrayList<Message>();
			for(String jsr : jsrs){
				Message msg = new Message();
				msg.setC_yhid(jsr);
				list.add(msg);
			}
			//sqlParamMap.put("c_jsr", list);
		}
		
		*
		***/
		messageService.insert("MessageMapper.insertMessage", sqlParamMap);
		//messageService.insert("MessageMapper.insertMessageRecieve", sqlParamMap);
		
		/**
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			messageService.update("MessageMapper.updateMessage", sqlParamMap);
		} else {
			messageService.insert("MessageMapper.insertMessage", sqlParamMap);
		}
		**/
		return Globals.SUCCESS;
	}
	
	public String messageOperate(String operateType, String value, String n_xh){
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("value", value);
		sqlParamMap.put("n_xh", n_xh);
	    messageService.update("MessageMapper.operateMessage", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> messageList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Message> messageList = (List<Message>) messageService.selectList("MessageMapper.getMessageList","");
		resMap.put("Rows", messageList);
		resMap.put("Total", messageList.size());
		return resMap;
	}
	
	public String messageUpdate(){
		message = (Message) messageService.selectOne("MessageMapper.getMessage", message);
		return Globals.SUCCESS;
	}
	
	
	public String messageView(){
		message = (Message) messageService.selectOne("MessageMapper.getMessage", message);
		return Globals.SUCCESS;
	}
	
	public String messageDelete(String n_xh){
		
		messageService.update("MessageMapper.deleteMessage", n_xh);
		return Globals.SUCCESS;
	}
	
	public String messageQuery(){
		
		message = (Message) messageService.selectOne("MessageMapper.getMessage", message);
		return Globals.SUCCESS;
	}
	
	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	public AbsServiceAdapter<Integer> getMessageService() {
		return messageService;
	}

	public void setMessageService(AbsServiceAdapter<Integer> messageService) {
		this.messageService = messageService;
	}

	
}
