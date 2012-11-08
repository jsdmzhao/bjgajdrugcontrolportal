package com.unis.app.blog.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.unis.core.service.AbsServiceAdapter;
import com.unis.core.util.Globals;
import com.unis.app.blog.model.Blog;

@Controller
@Scope(value="prototype")
public class BlogAction {

	private Blog blog;
	
	private String c_yhid;
	
	private Integer pagesize;
	
	private Integer page;
	
	@Autowired
	private AbsServiceAdapter<Integer> blogService = null;
	
	public String blogSave(Map<String, String> sqlParamMap,HttpServletRequest request){
		
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		String c_yhzid = session.getAttribute("cYhz")+"";
		sqlParamMap.put("c_yhid", c_yhid);
		sqlParamMap.put("c_yhzid", c_yhzid);
		
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			blogService.update("BlogMapper.updateBlog", sqlParamMap);
		} else {
			blogService.insert("BlogMapper.insertBlog", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public void blogList() throws JsonGenerationException, JsonMappingException, IOException{
		
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		
		//String c_yhid = session.getAttribute("userId")+"";
		String c_jb = session.getAttribute("cJb")+"";
		
		//sqlParamMap.put("c_yhid", c_yhid);
		sqlParamMap.put("c_jb", c_jb);
		sqlParamMap.put("start", String.valueOf(((page.intValue()-1)*pagesize.intValue())));
		sqlParamMap.put("limit", String.valueOf((page.intValue()*pagesize.intValue())));
		
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Blog> blogList = (List<Blog>) blogService.selectList("BlogMapper.getBlogPageList",sqlParamMap);
		Long cnt = (Long) blogService.selectOne("BlogMapper.getBlogPageListCnt",sqlParamMap);

		resMap.put("Rows", blogList);
		resMap.put("Total", cnt);

		ObjectMapper mapper = new ObjectMapper();
		
    	HttpServletResponse response = ServletActionContext.getResponse();
    	response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		mapper.writeValue(out, resMap);
		out.flush();
		out.close();
	}
	
	@SuppressWarnings("unchecked")
	public void blogPageList() throws IOException{
		
		Map<String, String> sqlParamMap = new HashMap<String, String>();
		
		sqlParamMap.put("start", String.valueOf(((page.intValue()-1)*pagesize.intValue())));
		sqlParamMap.put("limit", String.valueOf((page.intValue()*pagesize.intValue())));
		sqlParamMap.put("c_jb", "");
		
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Blog> blogList = (List<Blog>) blogService.selectList("BlogMapper.getBlogPageList",sqlParamMap);
		Long cnt = (Long) blogService.selectOne("BlogMapper.getBlogPageListCnt",sqlParamMap);

		resMap.put("Rows", blogList);
		resMap.put("Total", cnt);

		ObjectMapper mapper = new ObjectMapper();
		
    	HttpServletResponse response = ServletActionContext.getResponse();
    	response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		mapper.writeValue(out, resMap);
		out.flush();
		out.close();
	}
	
	public String blogUpdate(){
		blog = (Blog) blogService.selectOne("BlogMapper.getBlog", blog);
		return Globals.SUCCESS;
	}
	
	public String blogOperator(String type, String value, String n_xh, HttpServletRequest request){
		HttpSession session = request.getSession();
		String c_yhid = session.getAttribute("userId")+"";
		Map<String, Object> sqlparaMap = new HashMap<String, Object>();
		sqlparaMap.put("c_shr", c_yhid);
		sqlparaMap.put("type", type);
		sqlparaMap.put("c_shjg", value);
		sqlparaMap.put("n_xh", n_xh);
		blogService.update("BlogMapper.operateBlog", sqlparaMap);
		return Globals.SUCCESS;
	}
	

	public String blogView(){
		blog = (Blog) blogService.selectOne("BlogMapper.getBlog", blog);
		return Globals.SUCCESS;
	}
	
	
	public String blogDelete(String n_xh){
		
		blogService.update("BlogMapper.deleteBlog", n_xh);
		return Globals.SUCCESS;
	}
	
	public String blogQuery(){
		
		blog = (Blog) blogService.selectOne("BlogMapper.getBlog", blog);
		return Globals.SUCCESS;
	}

	public Blog getBlog() {
		return blog;
	}

	public void setBlog(Blog blog) {
		this.blog = blog;
	}

	public String getC_yhid() {
		return c_yhid;
	}

	public void setC_yhid(String cYhid) {
		c_yhid = cYhid;
	}

	public AbsServiceAdapter<Integer> getBlogService() {
		return blogService;
	}

	public void setBlogService(AbsServiceAdapter<Integer> blogService) {
		this.blogService = blogService;
	}

	public Integer getPagesize() {
		return pagesize;
	}

	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	
}
