<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
  <body>
���ﳵ������Ϊ��
<HR>
<%
	//�ӹ��ﳵ��ȡ��books
	ArrayList books = (ArrayList)session.getAttribute("books");
	//����books
	for(int i=0;i<books.size();i++){
		String book = (String)books.get(i);
		out.println(book + "<BR>");
	}
%>
</body>
</html>
