<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html> 
 <body>
   	<%
		request.setCharacterEncoding("GBK");
   		out.println("输入学生姓名是："+request.getParameter("stuname")+"<br>");
   	%>
  </body>
</html>
