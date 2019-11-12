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
			String sql = "DELETE FROM T_STUDENT WHERE STUNO='0001'";
			int i = stat.executeUpdate(sql);
			out.println("³É¹¦É¾³ý" + i + "ÐÐ");
			stat.close();
			conn.close();
    %>
	</body>
</html>
