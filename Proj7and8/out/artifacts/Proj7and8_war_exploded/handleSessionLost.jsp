<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
  <body>
<form action="handleSessionLost.jsp" method="post">
	���������鱾��<input name="book" type="text">
	<input type="submit" value="��ӵ����ﳵ">	
</form>
<HR>
<%
	//��session��ȡbooks�����Ϊ����ʵ����
	ArrayList books = (ArrayList)session.getAttribute("books");
	if(books==null){
		books = new ArrayList();
		session.setAttribute("books",books);
	}
	//�������
	String book = request.getParameter("book");
	if(book!=null){
		book = new String(book.getBytes("ISO-8859-1"));
		//��book�ӽ�ȥ
		books.add(book);
	}
%>
���ﳵ�е������ǣ�<BR>
<%
	//����books
	for(int i=0;i<books.size();i++){
		out.println(books.get(i) + "<BR>");
	}
%>
</body>
</html>
