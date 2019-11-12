<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
	<body>
	<%!
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/mytest?&useSSL=false&serverTimezone=UTC";
		String user="root";
		String password="123456";
	%>
	<%
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, user, password);
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
