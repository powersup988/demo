<%@ page language="java"  pageEncoding="gb2312"%>
  <html>
  <body>
  	�ύ��ʽ: <%=request.getMethod() %><br>
  	�����URL��ַ: <%=request.getRequestURI() %><br>
	Э������: <%=request.getProtocol() %><br>
	�ͻ�������������ļ���·��: <%=request.getServletPath() %><br>
	URL�Ĳ�ѯ����: <%=request.getQueryString() %><br>
	������������: <%=request.getServerName() %><br>
	�������ں�: <%=request.getServerPort() %><br>
	Զ�̿ͻ��˵�IP��ַ: <%=request.getRemoteAddr()%><br>
  </body>
  </html>
  
