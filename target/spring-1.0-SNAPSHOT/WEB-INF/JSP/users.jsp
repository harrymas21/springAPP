<%@include file="homeHeader.jsp" %>
<section id="main-content">
       <section class="wrapper">
           <div class="row">
               <div class="col-lg-12">
               <ol class="breadcrumb">
                   <li><i class="fa fa-home"></i><a href="${pageContext.servletContext.contextPath}/home">Home</a></li>
                   <li><i class="fa fa-laptop"></i>Dashboard</li>
               </ol>
                   <h3>List of Users</h3>
       <table class="table table-bordered" style="width: 300px">
         <tr>
             <th> </th>
           <th>Username</th>
           <th>Firstname</th>
           <th>Lastname</th>
           <th>Email</th>
           <th>Address</th>
           <th>Phone</th>
           <th></th>
           <th></th>
         </tr>
         <% int no=1; %>
         <spring:forEach items="${userList}" var="user">
         <tr>
           <td width="60" align="center">${no}</td>
           <td width="60" align="center">${user.username}</td>
           <td width="60" align="center">${user.firstname}</td>
           <td width="60" align="center">${user.lastname}</td>
           <td width="60" align="center">${user.email}</td>
           <td width="60" align="center">${user.address}</td>
           <td width="60" align="center">${user.phone}</td>
           <td width="60" align="center"><a href="${pageContext.servletContext.contextPath}/users/edit/${user.username}" class="btn-info">Edit</a></td>
           <td width="60" align="center"><a href="${pageContext.servletContext.contextPath}/users/delete/${user.username}" class="btn-info">Delete</a></td>
         </tr>
         <%no++;%>
      </spring:forEach>
    </table>
               </div>
           </div>
                </section>
   </section>
     <%@include file="homeFooter.jsp" %>