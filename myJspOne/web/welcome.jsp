<%@ page import="com.sun.org.apache.xerces.internal.impl.dv.xs.BaseDVFactory" %><%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/5
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    document.writeln("hellow!<br>");
    <%--公司好气热呀--%>
    //nihaoya
    /*
    * asdfasdf
    * asdfasdf
    * */
</script>

    <%
        for(int i = 0; i <10;i++){
            out.println(i+":"+"欢迎来到本系统！<br>   ");
        }

    %>
    <%
        for(int i = 0; i <10;i++){

    %>
    <%=i+":"+"欢迎入坑JavaWeb"%>
    <%
        }
    %>
$END$
</body>
</html>
