<%-- 
    Document   : deletenews
    Created on : 26 Nov, 2020, 11:11:20 AM
    Author     : h
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="com.commondb.Common_DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE NEWS</title>
        <style>
.button {
  border-radius: 4px;
  background-color: #000000;
  border: none;
  color: #ffffff;
  text-align: center;
  font-size: 15px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
    </head>
    <body Background="forestbridge.jpg">   
        <center>
            <form name="form1" method="post" action="deletenews">
         <br>
           </br>
           <table width="" border="0">
                <tr>
                    <td>
                        <div align="center">
                            <font size="10" face="Lucida Calligraphy">DELETE NEWS PAGE</font></div>
                    </td>
                </tr>
            </table>
           <p>
           </p>
        </center>
       <div align="center"><font size="4" face="Californian FB" color="#ffffff">
            <h1>NEWS LIST</h1></font>
        </div>
        <center>
        <table width="250" border="0">
            <tr>
                <td>
                    <div align="center"><font size="6" face="Chiller">NEWS List:</font></div>
                    <label for="news"></label>
                </td>
                <td>
                    <select name="category" >    
           <%  
           ArrayList li=new ArrayList();
           Connection con=null;
           Statement st=null;
           ResultSet rs=null;
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newspaper","root","password");
           st=con.createStatement();
           String qry="select category from news";
           rs=st.executeQuery(qry);
          
         while(rs.next())            
         {
          String n=rs.getString(1);   
           
             li.add(n);             
         }
            if(!(li.isEmpty()))        
         for(int ij=0; ij<li.size(); ij++)                   
              {
           %>
           <option value="<%=li.get(ij)%>"> <%=li.get(ij)%></option>
           <%
               }
             
                else {               
          %>
            <option value=""> </option>
          <%
         }
%>
          
       </select> 
                </td>
            </tr>
        </table>
        <table width="250" border="0">
            <tr>
                <td>
                    <div align="center">
                    <button class="button"><span>DELETE </span></button>
                    </div>
                </td>
            </tr>
        </table>
        </form>
        </center>
 <div align="center">
                        <a href="adminhome.jsp"><font size="5" face="Impact">Exit</font></a>
                    </div>
    </body>
</html>
