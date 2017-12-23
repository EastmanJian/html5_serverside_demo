<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/event-stream; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    System.out.println(new Date());
    response.setHeader("Content-Type", "text/event-stream");//设置服务器端事件流, note that the content type is "text/event-stream" instead of "text/html"
    response.setHeader("Cache-Control","no-cache");//规定不对页面进行缓存
    PrintWriter pw = response.getWriter(); //cannot user out (JspWriter) here because the out.write() will output the content inside the html page.
    pw.write("data: " + new Date());//输出发送日期（始终以 "data: " 开头）
%>
