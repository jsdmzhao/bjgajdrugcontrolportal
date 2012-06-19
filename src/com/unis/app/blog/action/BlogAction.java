package com.unis.app.blog.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.xwork.StringUtils;
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
	
	@Autowired
	private AbsServiceAdapter<Integer> blogService = null;
	
	public String blogSave(Map<String, String> sqlParamMap){
		if(StringUtils.isNotEmpty(sqlParamMap.get("n_xh"))){
			blogService.update("BlogMapper.updateBlog", sqlParamMap);
		} else {
			blogService.insert("BlogMapper.insertBlog", sqlParamMap);
		}
		return Globals.SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> blogList(){
		Map<String, Object> resMap = new HashMap<String, Object>();
		List<Blog> blogList = (List<Blog>) blogService.selectList("BlogMapper.getBlogList",c_yhid);
		resMap.put("Rows", blogList);
		resMap.put("Total", blogList.size());
		return resMap;
	}
	
	public String blogUpdate(){
		blog = (Blog) blogService.selectOne("BlogMapper.getBlog", blog);
		return Globals.SUCCESS;
	}
	
	public String blogOperator(String type, String value, String n_xh){
		Map<String, Object> sqlparaMap = new HashMap<String, Object>();
		sqlparaMap.put("c_shr", "");
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

	
}
