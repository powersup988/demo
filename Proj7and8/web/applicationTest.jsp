<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
  <body>
<%
    //��һ�η��ʣ�ʵ����count
	Integer count = (Integer)application.getAttribute("count");
	if(count==null){
		count = new Integer(0);
	}
	count++;	
	application.setAttribute("count",count);
%>
	���Ǹ�ҳ��ĵ�<%=count%>�������ߡ�
</body>
</html>
