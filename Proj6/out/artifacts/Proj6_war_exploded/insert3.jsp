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
		request.setCharacterEncoding("gb2312");
		String stuno = request.getParameter("stuno");
		String stuname = request.getParameter("stuname");
		String stusex = request.getParameter("stusex");
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement stat = conn.createStatement();
			String sql = "INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES(?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,stuno);
			ps.setString(2,stuname);
			ps.setString(3,stusex);
			int i = ps.executeUpdate();
			out.println("�ɹ����" + i + "��");
			ps.close();
			conn.close();
    %>
	</body>
</html>
