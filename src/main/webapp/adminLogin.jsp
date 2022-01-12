<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">   
  <link rel="stylesheet" type="text/css" href="style.css">  
  <style>
  .login-box{
    height: 380px;
}</style>
</head>
<body>
    <form method="post" action="adminLoginAction.jsp">
    <div class="login-box">
        <%
            String regMsg=(String)session.getAttribute("msg");
            if(regMsg!=null)
            {
        %>
        <p class="text-center"style="color: red;font-size: 20px">

            <%=  regMsg  %>
        </p>
        <%
            session.removeAttribute("msg");
            }
        %>
    <img src="user.png" class="avatar">
        <h1>Admin Login</h1>
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username" required="required">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required="required">
            <input type="submit" name="submit" value="Login">
             <center><h1><a href="index.jsp">Back</a></h1></center>
        </div>
    </form>
    </body>
</html>
