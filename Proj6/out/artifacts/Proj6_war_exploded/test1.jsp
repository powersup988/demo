<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/22
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%!
    String driver="com.mysql.cj.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/mysql?&useSSL=false&serverTimezone=UTC";
    String user="root";
    String password="123456";
%>general_log

<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String sex=request.getParameter("sex");
    out.println("收到的数据如下：");
    out.println("name:"+name);
    out.println("age:"+age);
    out.println("sex:"+sex);
    //out.println(name);
    String insert1="insert into test(name,age,sex) valuses(?,?,?)";
    String insert="insert into test(name,age,sex) values('"+name+"','"+age+"','"+sex+"')";
   out.println(insert);
   out.println("数据库连接成功！\n");

    try{
        Class.forName(driver);
        Connection cont=DriverManager.getConnection(url,user,password);
        PreparedStatement preparedStatement=cont.prepareStatement(insert1);
        Statement sta=cont.createStatement();
        preparedStatement.setString(1,name);
        preparedStatement.setString(2,age);
        preparedStatement.setString(3,sex);
        preparedStatement.executeUpdate();
        String find="select * from test";
        ResultSet rs=sta.executeQuery(find);
        out.println("<table><tr><td>name</td><td>sex</td><td>age</td></tr>");

        while(rs.next()){
            String get1=rs.getString("name");
            String get2=rs.getString("age");
            String get3=rs.getString("sex");
            out.println("<tr>"+"<td>"+get1+"</td>");
            out.println("<td>"+get2+"</td>");
            out.println("<td>"+get3+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");

    }
    catch(Exception e){

    }



%>
</body>
</html>
