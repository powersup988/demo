<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/6
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" import="java.util.*" pageEncoding="GBK"
    errorPage="anErrorPage.jsp" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <p>
        a:<input type="text" name="a" value><br>
        b:<input type="text" name="b" value><br>
        </p>
</form>
<%

//    String str="test";
//    String str1=null;
//    str=request.getParameter("m");
//    str1=request.getParameter("n");
//    int n=Integer.parseInt(str);
//    int m=Integer.parseInt(str1);
//    out.println("n+m="+(n+m));

%>
<br>
<a href="url目标.jsp?get=nn">
    点击这里得答案！
</a>
<p>
    现在时间是：<%=new Date() %>
</p>
<%
    int a=23;
    int b=0;
   // int c=a/b;
%>
<jsp:include page="info.jsp"/>
<%
    String name="bbbb";
    out.println(name);
%>
<input type="button" value="登录" onClick="function f1(){
       // document.writeln('<jsp:forward page="welcome.jsp"></jsp:forward>');
       }">

</body>
</html>
