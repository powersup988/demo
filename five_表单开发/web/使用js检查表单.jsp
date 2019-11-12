<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/7
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="java.sql.*"
%>
<%
    public class Conn {
        public static void main(String[] args) {
            Connection con;
            //jdbc驱动
            String driver="com.mysql.cj.jdbc.Driver";
            //这里我的数据库是cxxt
            String url="jdbc:mysql://localhost:3306/demo?&useSSL=false&serverTimezone=UTC";
            String user="root";
            String password="qq594385251";
            try {
                //注册JDBC驱动程序
                Class.forName(driver);
                //建立连接
                con = DriverManager.getConnection(url, user, password);
                if (!con.isClosed()) {
                    System.out.println("数据库连接成功");
                }
                con.close();
            } catch (ClassNotFoundException e) {
                System.out.println("数据库驱动没有安装");

            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("数据库连接失败");
            }
        }
    }
%>
\
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    function check(){
         var user =user.value;
         var pass= pass.value;

         if(user.length==0){
             window.alert("请输入账号！");
         }
         else if(pass=''){
             window.alert("请输入密码！");
         }
    }
</script>
<form action="index.jsp" method="post" target="_blank">
    user:<input type="text" name="user" value placeholder="Enter your user"><br>
    pass:<input type="text" name="pass" value placeholder="pass"><br>
    <input type="button" value="提交" onClick="check()"><br>
</form>
</body>
</html>
