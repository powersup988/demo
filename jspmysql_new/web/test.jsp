<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/23
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="java.sql.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    <form method="post">
    
</form>
    <%
        String driverClass="com.mysql.cj.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/mysql?useSSL=false&serverTimezone=CTT";
        String user="root";
        String password="123456";
        ResultSet rs =null;
        Connection conn;
        Class.forName(driverClass);
        conn=DriverManager.getConnection(url,user,password);
        Statement stmt=conn.createStatement();
        String sql="SELECT * FROM test";
        String getMess="SELECT * FROM test";
        ResultSet get=stmt.executeQuery(getMess);
        while(get.next()){
            out.println(get.getString("name")+"<br>");
            out.println(get.getString("age")+"<br>");
            out.println(get.getString("sex")+"<br>");
        }
    %>
</p>

</body>
</html>
