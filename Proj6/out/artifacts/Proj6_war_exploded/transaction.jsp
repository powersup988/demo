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
				conn.setAutoCommit(false);//设置为不要自动提交
				String sql1 = "UPDATE1";
				String sql2 = "UPDATE2";
				stat.executeUpdate(sql1);
				stat.executeUpdate(sql2);
				conn.commit();	//提交以上操作			
			}
			catch(Exception ex){
				conn.rollback();		//回退
			}
			finally{
				conn.close();
			}			
    %>
	</body>
</html>
