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
			String sql = "INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,stuno);
			ps.setString(2,stuname);
			ps.setString(3,stusex);
			int i = ps.executeUpdate();
			out.println("成功添加" + i + "行");
			ps.close();
			conn.close();
    %>
	</body>
</html>
