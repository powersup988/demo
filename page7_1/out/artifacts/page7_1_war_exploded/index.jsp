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
    out.println("�ύ��ʽ��"+request.getMethod()+"<br>");
    out.println("�õ�URL��Ϣ��"+request.getRequestURI()+"<br>");
    out.println("�õ�Э�飺"+request.getProtocol()+"<br>");
    out.println("��ÿͻ�������������ļ���·����"+request.getServletPath()+"<br>");
    out.println("��ȡ�ͻ��˵�ip"+request.getRemoteAddr());
    String black="0:0:0:0:0:0:0:1";
    if(black.equals(request.getRemoteAddr().toString())){
      out.println("���Ѿ��������������");
    }
  %>
  URL��ѯ���֣�<%=request.getQueryString()%>;
  <%
//    Thread.sleep(3000);
  //  response.sendRedirect("test.jsp?test=bbbbb");
  %>
  <form method="get" action="test.jsp">
  <input type="text" name="test" value="body is beautiful..">
  <input type="submit" value="���">
</form>
</p>
 // <sjsp:forward page="test.jsp"></sjsp:forward>

  </body>
</html>
