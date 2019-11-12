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
			out.println("成功添加" + i + "行");
		//	ps.close();
			//conn.close();
		String find="select * from T_STUDENT";
		ResultSet rs = stat.executeQuery(find);
		while(rs.next())	{
			out.println(rs.getString(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"<br>");
		}
		stat.close();
		conn.close();
		ps.close();
    %>
	</body>
</html>
