<%-- 
    Document   : adminHeader
    Created on : Aug 3, 2015, 12:56:56 PM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>admin header</title>
        <style>
           
          .UTMlogo {
            position: absolute;
            left: 20px;
            width: 300px;
            padding: 10px;
          .taskLogo{
            position: absolute;
            right: 0px;
            padding: 5px 20px 5px 20px;
            height: 20px;
            width: 500px;
            background-color: darkred;
            }
        }
      </style>
    </head>
    <body style="background-color: #FFFFCC">
        
        <nav class="navbar navbar-inverse" role="navigation" >
            <div style="background: -webkit-linear-gradient(#FFCC66, white); height: 120px;">
               
                <div class="UTMlogo"><img src="../images/logo-UTM-baru.png" alt="Home" style="width:300px; height:100px; "/></div>
               <div style="position: absolute; right: 0px; padding: 5px 20px 5px 20px; background-color: #990033; height: 30px; width: 35%;
                     color: white; text-align: center; font-family: Arial Black, Gadget, sans-serif; border-bottom-left-radius: 10px;"> TASKFORCE MANAGEMENT SYSTEM</div>
                <div style="position: absolute; right: 15px; padding-top: 25px;"><h2 style="font-family: Arial Black, Gadget, sans-serif; color: darkred">FACULTY OF COMPUTING</h2></div>
                 <div style="position: absolute; right: 50px; padding-top: 85px;"><img src="../images/inno.png"></div>
                
            </div>
            <div style="background: -webkit-linear-gradient(black, darkred); height: 5px">
                
            </div>
            <div class="navbar-header" >
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
               </button>
               
            </div>
            <div class="collapse navbar-collapse" id="main-navbar">
              
               <ul class="nav navbar-nav">
                <li class="divider"><a href="HomePageAdmin.jsp"><span class="glyphicon glyphicon-home"> HOME </span></a></li>
                  <li class="divider"><a href="news.jsp"><span class="glyphicons glyphicons-newspaper"> NEWS </span></a></li>
                  
                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        STAFF OPTION <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="registerMember.jsp">Register new staff</a></li>
                        <li class="divider"></li>
                        <li><a href="viewStaff.jsp">View all staff profile</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-submenu"><a tabindex="-1"href="postManagement.jsp">Post management</a>
                        <li><a tabindex="-1" href="#">Second level</a></li>
                        </li>
                     </ul>
                  </li>  
                  
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        C/T OPTION<b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="createTask.jsp">Create C/T</a></li>
                        <li class="divider"></li>
                         <li><a href="viewCTinfo.jsp">View C/T info</a></li>
                        <li class="divider"></li>
                        </ul>
                     </li>    
                  
                       <li><a href="Expiration.jsp">C/T EXPIRATION</a></li>
                                        
                      <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                         GROUP <b class="caret"></b>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="inGroup.jsp">In taskforce</a></li>
                        <li class="divider"></li>
                        <li><a href="noGroup.jsp">Not in any taskforce</a></li>
                     </ul> 
                     </li>
                    </ul> 
                
                     <ul class="nav navbar-nav navbar-right">
                       <li><a href="../Login.jsp"><span class="glyphicon glyphicon-log-out"> LOGOUT</span></a></li>
                       </ul>
                </div>              
             <div style="background: -webkit-linear-gradient(darkred, black); height: 5px">
                
            </div>
        </nav>
        
    </body>
</html>
