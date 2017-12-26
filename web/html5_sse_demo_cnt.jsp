<%@page import="java.io.PrintWriter" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/event-stream; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%! //need to use ! here for page global value
    static int regCnt = 0;

    synchronized void regCntAdd() { //synchronize for thread-safe
        regCnt += (int) (Math.random() * 100); //simulate the registered users are increasing.
    }
%>

<%
    response.setHeader("Content-Type", "text/event-stream");//configure event-stream as content-type in the response
    response.setHeader("Cache-Control", "no-cache");//no caching
    regCntAdd(); //increase the registered user count.
    System.out.println("regCnt=" + regCnt);
    PrintWriter pw = response.getWriter();
    pw.write("data: " + regCnt); //output the registered user count. Must start with "data:" prefix.
%>
