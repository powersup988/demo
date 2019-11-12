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
			String sql = "SELECT STUNO,STUNAME FROM T_STUDENT WHERE STUSEX='Ů'";
			ResultSet rs = stat.executeQuery(sql);
			while(rs.next()){
				String stuno = rs.getString("STUNO");
				String stuname = rs.getString("STUNAME");
				out.println(stuno + "  " + stuname + "<BR>");
			}
			stat.close();
			conn.close();
    %>
	</body>
</html>
