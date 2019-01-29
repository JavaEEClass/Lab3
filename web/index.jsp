<%@page import="java.util.Date" %>
<%@page import="java.text.DateFormat" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %>
<html>
<head><title>Today's date</title></head>
<body>

<%!
    public String getTime() {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        return dtf.format(now);
    }
%>

<%
    // In ra ngày tháng
    DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.LONG);
    String s = dateFormat.format(new Date());
    out.println("Today is " + s);
%>
<br/>Now is <%=getTime()%>


<%@ include file="jspf/copyright.jsp"%>

</body>
</html>