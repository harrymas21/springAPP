<%@include file="loginHeader.jsp" %>
<div  class="middle-box text-center loginscreen animated fadeInDown">
    <br/><br/><br/><br/><br/>
<fieldset>
            <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post" class="m-t">
                        <div class="form-group">
                            <form:label path="username">Username: </form:label>
                            <form:input path="username" name="username" id="username" placeholder="Username"/>
                        </div>
                        <div class="form-group">
                            <form:label path="password">Password:</form:label>
                            <form:password path="password" name="password" id="password" placeholder="Password" />
                        </div>
                            <form:button id="login" name="login">Login</form:button>
            </form:form>
    
            <table align="center">
                <tr>
                    <td style="font-style: italic; color: red;">${message}</td>
                </tr>
            </table>
                <a href="${pageContext.servletContext.contextPath}/" class="h3">Back</a>
                <h5 style="color:dodgerblue">&copy; </h5>
                <h5 style="color:dodgerblue">VERSION 1.0.0</h5>
                    </fieldset>
</div>
<%@include file="loginFooter.jsp" %>