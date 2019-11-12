<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/1
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<script type="text/javascript">
    function load(){
        if(document.form1.zh.value==''){
            window.alert("请输入账号！");
            return;
        }
        if(document.form1.mm.value==''){
            window.alert("a")
            window.alert("请输入密码！");
            return;
        }
        document.loginForm.zh.focus();
    }
</script>
<p>欢迎登陆！</p>
<form name="form1">
    输入账号:<input type="text" name="zh"><br>
    输入密码:<input type="text" name="mm"><br>
    <input type="button" value="登录" onClick="load()"><br>
</form>
</body>
</html>
