<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/28
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.* "%>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <%
     String get1=null;
     Cookie []cookies=request.getCookies();
     for(int i=0;i<cookies.length;i++){
         if(cookies[i].getValue().equals("number")){
             get1=cookies[i].getValue();
             break;
         }
     }
     if(get1!=null){
         int num=Integer.parseInt(get1);
     }
     Cookie cookie=new Cookie("num1","66666");
     cookie.setMaxAge(500);
     response.addCookie(cookie);
     out.println("get:"+get1);
 %>
</body>
</html>
