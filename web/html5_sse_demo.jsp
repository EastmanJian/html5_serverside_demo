<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    System.out.println(new Date());
    response.setHeader("Content-Type", "text/event-stream");//设置服务器端事件流
    response.setHeader("Cache-Control","no-cache");//规定不对页面进行缓存
    PrintWriter pw = response.getWriter();
    pw.write("data: " + new Date());//输出发送日期（始终以 "data: " 开头）
%>
</body>
</html>