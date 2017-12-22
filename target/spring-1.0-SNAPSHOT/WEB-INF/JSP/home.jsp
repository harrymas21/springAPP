    <%@include file="homeHeader.jsp" %>
     <section id="main-content">
       <section class="wrapper">
           <div class="row">
               <h3>Welcome back <span class="lite">${firstname} ${lastname}</span></h3>
               <ol class="breadcrumb">
                   <li><i class="fa fa-home"></i><a href="${pageContext.servletContext.contextPath}/home">Home</a></li>
                   <li><i class="fa fa-laptop"></i>Dashboard</li>
               </ol>
           </div>
                </section>
   </section>
     <%@include file="homeFooter.jsp" %>