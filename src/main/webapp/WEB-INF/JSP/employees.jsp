<%@include file="homeHeader.jsp" %>
<section id="main-content">
       <section class="wrapper">
           <div class="row">
               <h3>Add / Edit Employee!!!</h3>
      <form:form method="post" action="/spring/employee.html" commandName="employee">
        <div class="table-responsive">
          <table class="table table-bordered" style="width: 300px">
            <tr>
              <td>Id :</td>
              <td><form:input type="text" path="id" /></td>
            </tr>
            <tr>
              <td>Name :</td>
              <td><form:input type="text" path="name" /></td>
            </tr>
            <tr>
              <td>Age :</td>
              <td><form:input type="text" path="age" /></td>
            </tr>
            <tr>
              <td>Department :</td>
              <td><form:input type="text" path="dept" /></td>
            </tr>
            <tr>
              <td></td>
              <td><input class="btn btn-primary btn-sm" type="submit" value="Submit" /></td>
            </tr>
          </table>
        </div>
      </form:form>
     <br>
     <h3>List of Employees</h3>
       <table class="table table-bordered" style="width: 300px">
         <tr>
           <th>Id</th>
           <th>Name</th>
           <th>Age</th>
           <th>Department</th>
           <th>Edit/Delete</th>
         </tr>
         <spring:forEach items="${employeeList}" var="employee">
         <tr>
           <td width="60" align="center">${employee.id}</td>
           <td width="60" align="center">${employee.name}</td>
           <td width="60" align="center">${employee.age}</td>
           <td width="60" align="center">${employee.dept}</td>
           <td width="60" align="center"><a href="edit/${employee.id}">Edit</a>/<a href="delete/${employee.id}">Delete</a></td>
         </tr>
      </spring:forEach>
    </table>
           </div>
       </section>
</section>
         <%@include file="homeFooter.jsp" %>