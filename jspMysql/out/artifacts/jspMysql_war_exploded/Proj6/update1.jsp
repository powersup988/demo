<%@ page language="java" import="java.sql.*" pageEncoding="gb2312"%>
<html>
	<body>
		<%
    		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = DriverManager.getConnection("jdbc:odbc:DSSchool");
			Statement stat = conn.createStatement();
			String sql = "UPDATE T_STUDENT SET STUSEX='Ů' WHERE STUNO='0007'";
			int i = stat.executeUpdate(sql);
			out.println("�ɹ��޸�" + i + "��");
			stat.close();
			conn.close();
    %>
	</body>
</html>
