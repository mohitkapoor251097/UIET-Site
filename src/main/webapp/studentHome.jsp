
<%@page import="Project.ConnectionProvider"  %>
<%@page import="java.sql.*" %>
<%
    try
    {
       String rollNo=request.getParameter("rollNo");
      
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from student inner join result where student.rollNo=result.rollNo and student.rollNo='"+rollNo+"'");
        if(rs.next())
         {  %>
<img src="logo.png"  align="left"width="150" height="150">
<center><img src="uiet2.jpg" width="800" height="150">
    <a href="dgiOneView.html" style="width:100px; text-decoration: none;"class="btn-grad">Back</a>
  <hr class="new1">
<style>
     .btn-grad {background-image: linear-gradient(to right, #43cea2 0%, #185a9d  51%, #43cea2  100%)}
         .btn-grad {
            margin: 10px;
            padding: 15px 45px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
            display: block;
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name: UIET</th>
          <th>Course Name: <%=rs.getString(1) %></th>
          <th>Branch Name: <%=rs.getString(2) %></th>
          <th><center><%=rs.getString(3) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(4) %></th>
          <th>Father Name: <%=rs.getString(5) %></th>
          <th>Gender: <%=rs.getString(6) %></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>NAS101</td>
        <td colspan="2">Engg. Physics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(8) %></td>
      </tr>
      <tr>
        <td>NAS102</td>
        <td colspan="2">Engg. Chemistry</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td><%=rs.getString(9) %> </td>
      </tr>
      <tr>
        <td>NAS103</td>
        <td colspan="2">Engg. Mathematics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(10) %></td>
      </tr>
      <tr>
        <td>NEE101</td>
        <td colspan="2">Basic Electrical Engg. </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(11) %></td>
      </tr>
      <tr>
        <td>NEC101</td>
        <td colspan="2">Electronic Engg.</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(12) %></td>
      </tr>
      <tr>
        <td>NAS152</td>
        <td colspan="2">Engg. Chemistry Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td><%=rs.getString(13) %> </td>
      </tr>
      <tr>
        <td>NAS151</td>
        <td colspan="2">Engg. Physics Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td><%=rs.getString(14) %></td>
        
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>560</td>
        <td>180</td>
        <td><%int sum=rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12)+rs.getInt(13)+rs.getInt(14);out.println(sum); %>
                </td>
      </tr>
      <%
         String mark1=rs.getString(8);
         int marks1=Integer.parseInt(mark1);
          String mark2=rs.getString(9);
         int marks2=Integer.parseInt(mark2);
           String mark3=rs.getString(10);
         int marks3=Integer.parseInt(mark3);
         String mark4=rs.getString(11);
         int marks4=Integer.parseInt(mark4);
           String mark5=rs.getString(12);
         int marks5=Integer.parseInt(mark5);
           String mark6=rs.getString(13);
         int marks6=Integer.parseInt(mark6);
           String mark7=rs.getString(14);
         int marks7=Integer.parseInt(mark7);
         if(marks1>=30  && marks2>=30  &&  marks3>=30  &&  marks4>=30 && marks5>=30  && marks6>=15 && marks7>=15)
         {%>
         <tr>
             <td colspan="4" class="footer">Status</td>
              <td colspan="3">pass</td>
             <tr/>
             <%
         }
         else
        {%>
             <tr>
             <td colspan="4" class="footer">Status</td>
              <td colspan="3">Reappear</td>
             <tr/>
             <%
        }
   
          
          
          %>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100)/560);%></td>
      </tr>
  </table>
    <hr class="new1">
  <center><h6>Note: Institution doesn't own for the errors or omissions, if any, in this statement.
Designed & Developed by Mohit kapoor</h6></center>
  <hr class="new1">
<center><h6>All Right Reserved @ Mohit kapoor :: 2021</h6></center> 
  <hr class="new1">
</body>
<%
    }
else
{
response.sendRedirect("errorDgiOneView.html");
   }
}
catch(Exception e)
{
}%>