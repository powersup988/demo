<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
  <body>
���ﳵ������Ϊ��
<HR>
<%
    ArrayList books = new ArrayList();
	//��ʾ���ﳵ�е�����
	for (int i = 0; i < books.size(); i++) {
		String book = (String) books.get(i);
		out.println(book + "<BR>");
	}
%>
</body>
</html>
