<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/28
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    final String f1="user",f2="pass";
    String get1,get2;
    //request.setCharset("UTF-8");
    get1=request.getParameter("user");
    get2=request.getParameter("password");
    //get1.equals(f1)&&get2.equals(f2)
    out.print(f1.equals(get1)&&f2.equals(get2));
    if(f1.equals(get1)&&f2.equals(get2)){
        //window.alert("登录成功稍后进入系统。。。。。");
       out.print("<script>alert('登录成功稍后进入系统。。。。。'); window.location='demo3.jsp'");
        // </script>
    }
    else{
       // window.alert("密码错误请重新输入。。。。。");

        out.print("test");
        out.print("<script>document.alert('密码错误请重新输入。。。。。'); </script>");
        //Thread.sleep(5000);
        //response.sendRedirect("demo.jsp");
    }
%>
</body>
</html>
