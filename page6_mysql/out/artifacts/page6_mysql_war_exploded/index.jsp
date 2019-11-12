<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: sunda--%>
<%--  Date: 2019/9/15--%>
<%--  Time: 21:58--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>--%>
<%--<html>--%>
<%--  <head>--%>
<%--    <title>连接mysql</title>--%>
<%--  </head>--%>
<%--  <body>--%>
<%--  <div class="content">--%>

<%--    <form method="" action="index.jsp">--%>
<%--      名字：<input type="text" name="name"placeholder="输入名字"><br><br>--%>
<%--      年龄：<input type="text" name="age"placeholder="age"><br><br>--%>
<%--      性别：<input type="text" name="sex"placeholder="sex"><br><br>--%>
<%--      <input type="submit" value="提交"><br><br>--%>
<%--    </form>--%>
<%--    <%--%>
<%--      String username ="root";--%>
<%--      String password ="123456";--%>
<%--      //String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";--%>
<%--      final String url = "jdbc:mysql://localhost:3306/mysql?serverTimezone=GMT%2B8&characterEncoding=utf-8" ;--%>
<%--    //  Class.forName(DRIVER_NAME);--%>
<%--      Connection conn = DriverManager.getConnection(url,username,password);--%>
<%--      Statement statement = conn.createStatement();--%>
<%--      String name;--%>
<%--      String age;--%>
<%--      String sex;--%>
<%--      name=request.getParameter("name");--%>
<%--      age=request.getParameter("age");--%>
<%--      sex=request.getParameter("sex");--%>
<%--//      connection = DriverManager.getConnection(url, username, password);--%>
<%--//      Statement statement = connection.createStatement();--%>
<%--//      System.out.println(statement.toString());--%>
<%--//      System.out.println("成功");--%>
<%--//      String sql="INSERT INTO TEST(name) VALUES('ZHANGSHAN')";--%>
<%--//      int i=statement.executeUpdate(sql);--%>
<%--//      System.out.println("成功修改"+i+"行信息");--%>
<%--//      statement.close();--%>
<%--//      connection.close();--%>

<%--    %>--%>
<%--  </div>--%>
<%--  </body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*"%>
<html>
<head><title>通过JSP读取数据库中的表</title></head>
<body>
<%
  try {
    Class.forName("com.mysql.jdbc.Driver");  ////加载数据库驱动
    String url = "jdbc:mysql://localhost:3306/mysql?serverTimezone=GMT%2B8&characterEncoding=utf-8"; //指向数据库table1
    String username = "root";  //数据库用户名
    String password = "123456";  //数据库用户密码
    Connection conn = DriverManager.getConnection(url, username, password);  //连接数据库
    if(conn != null){
      out.print("数据库连接成功！");
      out.println("<br />");
      out.println("-------------------------------");
      out.print("<br />");
      Statement stmt = null;
      ResultSet rs = null;
      String sql ="select * from student";  //查询语句
      stmt = conn.createStatement();
      rs = stmt.executeQuery(sql);
      out.println("执行结果如下所示:");
      out.println("<br />");
      out.println("-------------------------------");
      out.println("<br />");
      out.println("姓名" + "\t" + "姓别"+"\t"+"年龄"+"\t"+"工资");
      out.println("<br />");
      while (rs.next()) {
        out.println(rs.getString("姓名")+"   &nbsp  "+rs.getString("性别")+"  &nbsp "+rs.getInt("年龄")+"  &nbsp "+rs.getInt("工资")); //将数据库表格查询结果输出
        out.print("<br />");
      }
    }
    else{
      out.print("连接失败！");
    }
  }
  catch (Exception e) {
    out.print("数据库连接异常！");
  }
%>
</body>
</html>