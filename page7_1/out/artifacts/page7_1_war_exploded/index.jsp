<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/27
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
<p>
  <%
    out.println("提交方式："+request.getMethod()+"<br>");
    out.println("得到URL信息："+request.getRequestURI()+"<br>");
    out.println("得到协议："+request.getProtocol()+"<br>");
    out.println("获得客户端请求服务器文件的路径："+request.getServletPath()+"<br>");
    out.println("获取客户端的ip"+request.getRemoteAddr());
    String black="0:0:0:0:0:0:0:1";
    if(black.equals(request.getRemoteAddr().toString())){
      out.println("你已经背拉入黑名单！");
    }
  %>
  URL查询部分：<%=request.getQueryString()%>;
  <%
//    Thread.sleep(3000);
  //  response.sendRedirect("test.jsp?test=bbbbb");
  %>
  <form method="get" action="test.jsp">
  <input type="text" name="test" value="body is beautiful..">
  <input type="submit" value="提价">
</form>
</p>
 // <sjsp:forward page="test.jsp"></sjsp:forward>

  </body>
</html>
