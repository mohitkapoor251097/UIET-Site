<%@ page import="Project.Admin" %><%
String username1=request.getParameter("username");
String password1=request.getParameter("password");

if(username1.equalsIgnoreCase("admin") &&  password1.equalsIgnoreCase("admin"))
        {
            Admin admin =  new Admin(username1,password1);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("Admin",admin);
            response.sendRedirect("adminHome.jsp");
            return;
        }
else
{
//    response.sendRedirect("errorAdminLogin.html");
    HttpSession httpSession = request.getSession();
    httpSession.setAttribute("msg","Incorrect Username or Password");
    response.sendRedirect("adminLogin.jsp");
}
%>