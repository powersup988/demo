<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
	<body>  
	���������Լ�����Ϣ����ע��  
	<form action="multiNameForm_result.jsp" method="post">
		�����������ĵ绰����(���4��)��<BR>
		<%for(int i=1;i<=4;i++){ %>
		    ����<%=i %>��<input name="phone" type="text"><BR>
		<%} %>
		<input type="submit" value="ע��">
	</form>
	</body>
</html>

