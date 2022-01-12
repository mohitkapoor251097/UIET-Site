<%@ page import="javax.websocket.Session" %>
<%
    HttpSession httpSession=request.getSession();
    httpSession.removeAttribute("Admin");
    response.sendRedirect("adminLogin.jsp");
%>