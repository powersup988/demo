<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
  <body>
<%
	ArrayList books = new ArrayList();
	//���ﳵ�����
	books.add("��������");
	books.add("���μ�");
	books.add("ˮ䰴�");
%>
���ﳵ������Ϊ��
<HR>
<%
	//��ʾ���ﳵ�е�����
	for (int i = 0; i < books.size(); i++) {
		String book = (String) books.get(i);
		out.println(book + "<BR>");
	}
%>
  </body>
</html>
