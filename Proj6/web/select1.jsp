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
		String sql="select * from T_STUDENT";
		ResultSet rs = stat.executeQuery(sql);
		out.println("<div align='center'><table border='1'>" +
				"<tr><th>学号</th><th>名字</th><th>性别</th></tr>"+
				"<tr><td>name</td><td>sex</td><td>age</td></tr>");
		while(rs.next()){
			String get1=rs.getString(1);
			String get2=rs.getString(2);
			String get3=rs.getString(3);
			out.println("<tr>"+"<td>"+get1+"</td>");
			out.println("<td>"+get2+"</td>");
			out.println("<td>"+get3+"</td>");
			out.println("</tr>");
		}
		out.println("</table></div>");

//			while(rs.next()){
//				String stuno = rs.getString(1);
//				String stuname = rs.getString(2);
//				String stusex=rs.getString(3);
//				out.println(stuno + "  " + stuname + " "+stusex+"dd<BR>");
//			}
			stat.close();
			conn.close();
    %>
	</body>
</html>
