<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
	<body>
	��ӭ��¼ѧ������ϵͳ
	<script type="text/javascript">
		function validate(){
			if(loginForm.account.value==""){
				alert("�˺Ų���Ϊ��!");
				return;
			}
			if(loginForm.password.value==""){
				alert("���벻��Ϊ��!");
				return;
			}
			loginForm.submit();
		}
	</script>
	<form name="loginForm" action="target.jsp " method="post">
		���������˺ţ�<input name="account" type="text"><BR>
		�����������룺<input name="password" type="password"><BR>
		<input type="button" value="��¼" onClick="validate()">	
	</form>
	<form name="tew" action="target.jsp" method="get">
		���������˺ţ�<input name="account" type="text"><BR>
		�����������룺<input name="password" type="password"><BR>
	</form>
	</body>
</html>
