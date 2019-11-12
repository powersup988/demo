<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/25
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    .script{
    border:1px;
    }
</head>
<body>
<div class="script">
  <form method="get" action="getMess.jsp" border="1px solid">

      输入：<input type="text" name="set"><br>
      输出：<input type="text" name="get"><br>
      <input type="radio" name="sex" value="man" checked="checked">男<br>
      <input type="radio" name="sex" value="woman">女<br>
      <input type="checkbox" name="love" value="apple">苹果
      <input type="checkbox" name="love" value="banna">香蕉
      <input type="checkbox" name="love" value="three">李
      <input type="checkbox" name="love" value="four">阿萨的妇女
      <input type="checkbox" name="love" value="five">啊手动阀
      <select name="section" multiple>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="2">3</option>
          <option value="3">4</option>
          <option value="4">5</option>
      </select>
        <%
            for(int i=0;i<100;i++){
        %>
          号码<%=i+":"%><input type="text" name="phone">
      <%
          }
      %>
      <input type="submit" value="submit"><br>
      <input type="button" value="提交" onClick="gets();">
  </form>
    <script type="text/javascript">
        function gets(){
            var get=document.getElementById("set");
            document.writeln("get:"+get.value());
            loginForm.submit();
            return true;
        }

    </script>
</div>


</body>
</html>
