<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>Server received the following inputs from browser</h4>
<UL>
<%
    Enumeration<String> paraNames = request.getParameterNames();
    while (paraNames.hasMoreElements()) {
        String pName = paraNames.nextElement();
        out.println("<LI>" + pName + " - " + request.getParameter(pName) + "</LI>");
    }
%>
</UL>
</body>
</html>
