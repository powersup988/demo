<%@ page language="java" contentType="text/html; charset=gb2312"%>
<html>
	<body>
	<%
		String[] fav = request.getParameterValues("fav");
		out.println("����Ϊ:");
		for(int i=0;i<fav.length;i++){
			out.println(fav[i]);
		}
	%>
	</body>
</html>

