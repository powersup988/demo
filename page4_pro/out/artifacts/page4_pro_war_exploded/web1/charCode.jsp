<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
	<body>		
	<form action="charCode.jsp" method="post">
		���������ʻ���ģ�����ϣ�<BR>
		<input name="flower" type="text">
		<input type="submit" value="��ѯ">
	</form>
	<%
	    request.setCharacterEncoding("gb2312");
		String flower = request.getParameter("flower");
		if(flower!=null){
		   //flower = new String(flower.getBytes("ISO-8859-1"),"gb2312");
			out.println("��������Ϊ��" + flower);
		}
	%>
	</body>
</html>

