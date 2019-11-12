<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/11/11
  Time: 8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="javabean.Student" %>
<%@ page import="java.*" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

<jsp:useBean id="student" class="javabean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="student" param="long"></jsp:setProperty>
<jsp:setProperty property="*" name="student" param="width"></jsp:setProperty>
<jsp:setProperty property="*" name="student" param="height"></jsp:setProperty>
<jsp:setProperty property="*" name="student" value="体积为："></jsp:setProperty>
<p>
    len：<%= student.getLen()%><br>
    height:<%= student.getHeight()%><br>
    width:<%= student.getWidth()%><br>
    <%= student.getName() %>
    <%=student.getS()%>
</p>
</body>
</html>
