<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
  <body>
<%
	ArrayList books = new ArrayList();
	//��books�����
	books.add("��������");
	books.add("���μ�");
	books.add("ˮ䰴�");
	//��books����session
	session.setAttribute("books",books);
%>
<a href="cart3_2.jsp">�鿴���ﳵ</a>
</body>
</html>
