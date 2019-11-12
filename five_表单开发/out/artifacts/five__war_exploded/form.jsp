<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/6
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
    <form name="f1" action="index.jsp"  method="post" target="_blank">
        账号：<input type="text" name="user" placeholder="请输入账号！"><br>
        密码：<input type="password" name="password" placeholder="password"><br>
        个人说明：<input type="textarea" name="info" rows="20" cols="30"placeholder="Enter your message here!"><br>
        性别:<input type="radio" name="sex" value="boy" checked="checked">男
            <input type="radio" name="sex" value="girl" >女<br>
          家乡：<select name="home">
              <option value="shanghai" >Shanghai</option>
              <option value="beijing" selected>Beijing</option>
              <option value="kaili">kaili</option>
          </select><br>
        <p>
            <input type="checkbox" name="fav" value="sing">唱歌
            <input type="checkbox" name="fav" value="dance">跳舞
            <input type="checkbox" name="fav" value="ball">ball
            <input type="checkbox" name="fav" value="game">game
        </p>
        <p>
            请输入你的号码，最多四个：<br>
            <%
                for(int i=0;i<4;i++){
            %>
            号码<%=i%>：<input type="text" name="num"><br>
            <%
                }
            %>
        </p>
        <input type="submit" value="提交">
        <input type="reset" value="重置"><br>
        <input type="text" value="88">
    </form>
</body>
</html>
