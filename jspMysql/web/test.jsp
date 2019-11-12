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
%>

<%
    request.setCharacterEncoding("GBK");
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String sex=request.getParameter("sex");
    out.println("收到的数据如下：");
    out.println("name:"+name);
    out.println("age:"+age);
    out.println("sex:"+sex);
    //out.println(name);
    Class.forName(driver);
    Connection cont=DriverManager.getConnection(url,user,password);
    Statement sta=cont.createStatement();
    String sql1="insert into test(name,age,sex) values(?,?,?)";
    PreparedStatement ps=cont.prepareStatement(sql1);
    out.println("数据库连接成功！\n");
    String testStr="INSERT INTO test('name','age','sex') VALUES('zhang','32','nan')";
    String delStr="delete from test where name='张三'";
    String orderInsert="insert into test(name,age,sex) values('"+name+"','"+age+"','"+sex+"')";
    String update="update test set name='张娟娟' where sex='女'";;
    String select="select * from test";
    System.out.println(orderInsert+"<br>");
   // out.println(testStr+"<br>");
    ResultSet rs =sta.executeQuery(select);
    try{

       /// int getRes= sta.executeUpdate(orderInsert);
       // ResultSet rs =sta.executeQuery(select);
        ps.setString(1,name);
        ps.setString(2,age);
        ps.setString(3,sex);
        ps.executeUpdate();
       // out.println(getRes+"行数据被修改！<br>");
//        while (rs.next()){
//            String name1 = rs.getString("name");
//            String age1 = rs.getString("age");
//            String sex1 = rs.getString("sex");
//            out.println("<p>");
//            out.println(name1 + " " + age1 + " " + sex1+"<br>");
//            out.println("</p>");
//        }
        out.println("<table><tr><td>name</td><td>sex</td><td>age</td></tr>");
//        <table>
//                <tr>
//                   <td></td>
//                </tr>
//        </table>
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
