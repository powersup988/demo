<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/15
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
    import java.sql.*;
/**
 * 测试数据库
 */
    public class Demo {
    //mysql驱动包名
    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    //数据库连接地址
    private static final String URL = "jdbc:mysql://localhost:3306/colouredglaze?serverTimezone=GMT%2B8&characterEncoding=utf-8";
    //用户名
    private static final String USER_NAME = "root";
    //密码
    private static final String PASSWORD = "123456";
    public static void main(String[] args){
    Connection connection = null;
    try {
    //加载mysql的驱动类
    Class.forName(DRIVER_NAME);
    //获取数据库连接
    connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
    System.out.println("成功");

    //mysql查询语句
    String sql = "SELECT * FROM `stu`";
    PreparedStatement prst = connection.prepareStatement(sql);
    //结果集
    ResultSet rs = prst.executeQuery();
    while (rs.next()) {
    System.out.println("学号:" + rs.getString("sno")+"   "+"姓名:" + rs.getString("sname")+" "+"性别:"+ rs.getString("ssex"));
    }
    rs.close();
    prst.close();
    } catch (Exception e) {
    e.printStackTrace();
    }
    }

    }
%>
</body>
</html>
