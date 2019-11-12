<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/14
  Time: 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        table { border:1px solid black}
        tr { border:1px solid black}
    </style>
</head>
<body>
<%!
    String driver="com.mysql.cj.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/mytest?&useSSL=false&serverTimezone=UTC";
    String user="root";
    String password="123456";
%>
<p>Titleasdfasdf</p>
<%
    request.setCharacterEncoding("gb2312");
    String stuno = request.getParameter("stuno");
    String stuname = request.getParameter("stuname");
    String stusex = request.getParameter("stusex");
    Class.forName(driver);
    Connection conn = DriverManager.getConnection(url, user, password);
    Statement stat = conn.createStatement();
    String sql = "SELECT  * FROM T_STUDENT";
    ResultSet rs = stat.executeQuery(sql);
    String sqls = "INSERT INTO T_STUDENT(STUNO,STUNAME,STUSEX) VALUES(?,?,?)";
    PreparedStatement ps = conn.prepareStatement(sqls);
    ps.setString(1,stuno);
    ps.setString(2,stuname);
    ps.setString(3,stusex);
    int i = ps.executeUpdate();
    out.println("成功添加" + i + "行<br>");
    out.println("<table ><tr><td>name</td><td>sex</td><td>age</td></tr>");
//        <table>
//                <tr>
//                   <td></td>
//                </tr>
//        </table>
    out.println("<p>aaaaaasfd</p>");
    while(rs.next()){
        String get1=rs.getString(1);
        String get2=rs.getString(2);
        String get3=rs.getString(3);
        out.println("<tr>"+"<td>"+get1+"</td>");
        out.println("<td>"+get2+"</td>");
        out.println("<td>"+get3+"</td>");
        out.println("</tr>");
    }
    out.println("</table>");
    stat.close();
    conn.close();
   // ps.close();
%>


</body>
</html>
