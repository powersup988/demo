<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
	<body>
		<%
    		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = DriverManager.getConnection("jdbc:odbc:DSSchool");
			Statement stat = conn.createStatement();
			String sql = "INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES('0032','冯江','男')";
			int i = stat.executeUpdate(sql);
			out.println("成功添加" + i + "行");
			stat.close();
			conn.close();
    %>
	</body>
</html>
