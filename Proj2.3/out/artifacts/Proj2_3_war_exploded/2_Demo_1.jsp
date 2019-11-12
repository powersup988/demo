<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/15
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" >
    <title>页面布局</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <form align="center" class="form1" action="2_Demo_1.jsp" method="">
                <h3>Please Log In</h3>
                Login:<input type="text" name="login"class="login" placeholder="user"><br><br>Password:<input type="password" class="password" placeholder><br>
                <input type="submit" value="Ok">       <input type="button" value="Forgot Password">
            </form>

        </div>
        <div class="row">
            <div class="col-md-4 mess" style="background-color: #f86182;box-shadow:
         inset 1px -1px 1px #444, inset -1px 1px 1px #444;height:425px">
               个人信息如下：<br>
            </div>
            <div class="col-md-8" style="background-color: #dedef8;box-shadow:
         inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
                <form action="">
                    id <input type="text"><br><br>
                    Password <input type="text"><br><br>
                    Re-Password <input type="text"><br><br>
                    First Name <input type="text"><br><br>
                    Last Name  <input type="text"><br><br>
                    Question <input type="text"><br><br>
                    State <select>
                        <option value="select">[Select State]</option>
                        <option value="one">one</option>
                        <option value="twe">twe</option>
                        <option value="three">three</option>
                        <option value="four">four</option>
                    </select>
                    <br><br>
                    Select interst:<input type="checkbox" > Technology
                    <input type="checkbox" > People
                    <input type="checkbox" > Apple
                    <input type="checkbox" > Ball
                    <input type="checkbox" > Think
                    <br>

                    Question<select>
                        <option value="select">[Select Question]</option>
                        <option value="one">one</option>
                        <option value="twe">twe</option>
                        <option value="three">three</option>
                        <option value="four">four</option>
                    </select>
                    <input type="text"><br><br>
                    <input type="button" value="Submit Information" onClick="">
                    <input type="reset" value="Reset Form" onClick="">
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">

        val user=request.getParameter("login");
        val password=request.getParameter("password");
        mess.text(user+<br>+password);
    </script>
</body>
</html>
