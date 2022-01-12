<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
 String rollNo=request.getParameter("rollNo");
 String s1=request.getParameter("s1"); 
 String s2=request.getParameter("s2"); 
 String s3=request.getParameter("s3"); 
 String s4=request.getParameter("s4"); 
 String s5=request.getParameter("s5"); 
 String s6=request.getParameter("s6"); 
 String s7=request.getParameter("s7"); 

  int marks1=Integer.parseInt(s1);
  int marks2=Integer.parseInt(s2);
  int marks3=Integer.parseInt(s3);
  int marks4=Integer.parseInt(s4);
  int marks5=Integer.parseInt(s5);
  int marks6=Integer.parseInt(s6);
  int marks7=Integer.parseInt(s7);
         

try
{ 
    if(marks1<=100 && marks2<=100 && marks3<=100 && marks4<=100 && marks5<=100 && marks6<=30 && marks7<=30){
   Connection con=ConnectionProvider.getCon();
   Statement st=con.createStatement();
   st.executeUpdate("insert into result values('"+rollNo+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')");
   response.sendRedirect("adminHome.jsp");
    }
    else
    {%>
        <%out.print("invalid");
              HttpSession session1=request.getSession();
              session.setAttribute("succMsg", "Theory marks enter <=100 and Practical marks enter <=30");
            response.sendRedirect("adminHome.jsp");
    }
 
}
catch(Exception e)
{ 
    response.sendRedirect("error_page.jsp");
    out.print(e);
    
}







%>
