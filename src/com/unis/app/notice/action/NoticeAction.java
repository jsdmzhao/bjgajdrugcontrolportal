package com.unis.app.notice.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.commons.lang.xwork.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.notice.model.Notice;

@Controller
@Scope(value="prototype")
public class NoticeAction {

	private Notice notice;

	@Autowired
	private AbsServiceAdapter<Integer> noticeService = null;
	
	
	public String noticeSave(Map<String, String> sqlParamMap){
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			noticeService.update("NoticeMapper.updateNotice", sqlParamMap);
		} else {
			noticeService.insert("NoticeMapper.insertNotice", sqlParamMap);
		}
		return Globals.SUCCESS;
	}
	
	public String noticeOperate(String operateType, String value, String n_xh){
		Map<String, Object> sqlParamMap = new HashMap<String, Object>();
		sqlParamMap.put("operateType", operateType);
		sqlParamMap.put("value", value);
		sqlParamMap.put("n_xh", n_xh);
	    noticeService.update("NoticeMapper.operateNotice", sqlParamMap);
		return Globals.SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> noticeList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Notice> noticeList = (List<Notice>) noticeService.selectList("NoticeMapper.getNoticeList","");
		resMap.put("Rows", noticeList);
		resMap.put("Total", noticeList.size());
		return resMap;
	}
	
	public String noticeUpdate(){
		notice = (Notice) noticeService.selectOne("NoticeMapper.getNotice", notice);
		return Globals.SUCCESS;
	}
	
	
	public String noticeView(){
		notice = (Notice) noticeService.selectOne("NoticeMapper.getNotice", notice);
		return Globals.SUCCESS;
	}
	
	public String noticeDelete(String n_xh){
		
		noticeService.update("NoticeMapper.deleteNotice", n_xh);
		return Globals.SUCCESS;
	}
	
	public String noticeQuery(){
		
		notice = (Notice) noticeService.selectOne("NoticeMapper.getNotice", notice);
		return Globals.SUCCESS;
	}
	
	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public AbsServiceAdapter<Integer> getNoticeService() {
		return noticeService;
	}

	public void setNoticeService(AbsServiceAdapter<Integer> noticeService) {
		this.noticeService = noticeService;
	}

	
}
