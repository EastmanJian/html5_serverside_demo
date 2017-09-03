<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>Server received the following inputs from <b>ADMIN</b> user</h4>
<UL>
<%
    Enumeration<String> paraNames = request.getParameterNames();
    while (paraNames.hasMoreElements()) {
        String pName = paraNames.nextElement();
        String[] paraValues = request.getParameterValues(pName);
        for (String value : paraValues) {
            out.println("<LI>" + pName + " - " + value + "</LI>");
        }
    }
%>
</UL>
</body>
</html>
