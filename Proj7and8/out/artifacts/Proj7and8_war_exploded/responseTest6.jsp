<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html> 
 <body>
   	<%
		request.setCharacterEncoding("GBK");
   		out.println("����ѧ�������ǣ�"+request.getParameter("stuname")+"<br>");
   	%>
  </body>
</html>
