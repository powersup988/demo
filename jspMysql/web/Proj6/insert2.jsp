<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
	<body>
		<%
			request.setCharacterEncoding("gb2312");
			String stuno = request.getParameter("stuno");
			String stuname = request.getParameter("stuname");
			String stusex = request.getParameter("stusex");
    		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = DriverManager.getConnection("jdbc:odbc:DSSchool");
			Statement stat = conn.createStatement();
			String sql = "INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES('" +
							stuno+"','"+stuname + "','"+stusex+"')";
			int i = stat.executeUpdate(sql);
			out.println("成功添加" + i + "行");
			stat.close();
			conn.close();
    %>
	</body>
</html>
