package com.unis.shgk.common.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.xwork.StringUtils;


import com.unis.core.cache.CacheManager;
import com.unis.core.service.AbsServiceAdapter;

/**
 * WEB层用到的一些工具
 * 
 * @author GZY
 * @author CSJ
 */
public class WebUtil {
    /**
     * 读取json格式参数
     * 
     * @param request
     * @return
     * @throws IOException
     */
    public static String readJSONString(HttpServletRequest request) throws IOException {
        StringBuffer json = new StringBuffer();
        String line = null;
        BufferedReader reader = request.getReader();
        while ((line = reader.readLine()) != null) {
            json.append(line);
        }
        return json.toString();
    }
    /**
     * @param id  N_BXH
     * @param value C_DM
     * @param dm    是否是代码值 1/0
     * @param dz    是否多值代码 1/0
     * @return    获取字典代码的显示值
     *//*
    public static String getDictValue(String id,String value,String dm,String dz){
        
        return null;
    }*/

    /**
     * 从Web请求中获取查询参数JSON格式，并封装成Map给iBatis
     * 
     * @param request
     * @return
     * @throws IOException
     * @throws JsonParseException
     */
    public static Map<String, Object> getParamsFromRequest(HttpServletRequest request) {
        Map<String, Object> paramMap = new HashMap<String, Object>();
        Map<String, String[]> reqParamMap = request.getParameterMap();
        Set<Entry<String, String[]>> entitySet = reqParamMap.entrySet();
        String pageStart = "start";
        String pageLimit = "limit";
        for (Entry<String, String[]> entry : entitySet) {
            String value = ((String[]) entry.getValue())[0];
            if (!pageStart.equals(entry.getKey()) || !pageLimit.equals(entry.getKey())) {
                paramMap.put(entry.getKey(), value);
            }
        }
        // 处理分页
        String start = request.getParameter(pageStart);
        String limit = request.getParameter(pageLimit);
        if (StringUtils.isNotEmpty(start) && StringUtils.isNotEmpty(limit)) {
            paramMap.put(pageStart, start);
            paramMap.put(pageLimit, Integer.valueOf(start) + Integer.valueOf(limit));
        }
        return paramMap;
    }

    /**
     * 用于后台往前台js文件写数据(前台用autoload方式获取)，并设置编码防止乱码
     * 
     * @param html
     * @param response
     * @throws IOException
     */
    public static void writer(String str, HttpServletResponse response, String contentType) throws IOException {
        PrintWriter out = null;
        String html = null;
        html = new String(str.getBytes("utf-8"), "iso-8859-1");
        out = response.getWriter();
        response.setCharacterEncoding("utf-8");

        if (StringUtils.isEmpty(contentType)) {
            contentType = "text/html;charset=utf-8";
        }
        response.setHeader("Content-Type", contentType);
        out.write(html);
        out.flush();
        out.close();
    }

    /**
     * 获取系统当前时间戳 (格式：‘20110711095137|年月日时分秒’)
     * 
     * @return
     */
    public static String getCurrentTimestmp(String format) {
        if (StringUtils.isEmpty(format)) {
            format = "yyyy-MM-dd HH:mm:ss";
        }
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        String currenttimestmp = "";
        currenttimestmp = sdf.format(new Date());
        return currenttimestmp;
    }

    /**
     * 转换client端日期
     * 
     * @return
     * @throws ParseException
     */
    public static String convertTime4Database(String origiFormat, String destFormat, String rawTime)
            throws ParseException {
        if (StringUtils.isEmpty(origiFormat)) {
            origiFormat = "yyyy-MM-dd HH:mm:ss";

        }
        if (StringUtils.isEmpty(destFormat)) {
            destFormat = "yyyyMMddHHmmss";
        }
        SimpleDateFormat sdf = new SimpleDateFormat(origiFormat);
        Date d = sdf.parse(rawTime);
        sdf.applyPattern(destFormat);
        String destTime = sdf.format(d);
        return destTime;
    }
    
    /**
     * 对文件流输出下载的中文文件名进行编码 屏蔽各种浏览器版本的差异性
     */
    @SuppressWarnings("unused")
    private static String encodeChineseDownloadFileName(HttpServletRequest request, String pFileName) {
        String agent = request.getHeader("USER-AGENT");
        try {
            if (null != agent && -1 != agent.indexOf("MSIE")) {
                pFileName = URLEncoder.encode(pFileName, "utf-8");
            } else {
                pFileName = new String(pFileName.getBytes("utf-8"), "iso8859-1");
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return pFileName;
    }

    public static String getCurrentTimestmp() {
        return getCurrentTimestmp(null);
    }

    public static String convertTime4Database(String rawTime) throws ParseException {
        return convertTime4Database(null, null, rawTime);
    }

    public static void writer(String str, HttpServletResponse response) throws IOException {
        writer(str, response, null);
    }
}
