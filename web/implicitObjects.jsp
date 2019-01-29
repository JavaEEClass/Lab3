<%@ page import="java.util.Enumeration" %>
<html>
<head><title>JSP Implicit Objects</title></head>
<body>
<h1>JSP Implicit Objects</h1><br/>
<%
    for (Enumeration<String> e = request.getHeaderNames(); e.hasMoreElements(); ) {
        String header = e.nextElement();
        out.println(header + ": " + request.getHeader(header) + "<br/>");
    }

    out.println("Buffer size: " + response.getBufferSize() + "<br/>");
    out.println("Session id: " + session.getId() + "<br/>");
    out.println("Servlet name: " + config.getServletName() + "<br/>");
    out.println("Server info: " + application.getServerInfo());
%>
</body>
</html>