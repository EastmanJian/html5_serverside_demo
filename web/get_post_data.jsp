<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("Access-Control-Allow-Origin", "https://eastmanjian.github.io");
    response.setHeader("Access-Control-Allow-Credentials", "true");

    ServletInputStream in = request.getInputStream();
    int c = in.read();
    if (c == -1) {
        out.print("No post data received.");
        System.out.println("No post data received.");
    } else {
        do {
            out.write(c);
            System.out.write(c);
        } while ((c = in.read()) != -1);
    }
%>
