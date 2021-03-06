<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<div class="container">
    <div class="row">
      <div class="offset-lg-2 col-lg-8 col-sm-8 col-8 border rounded main-section">
        <h3 class="text-center text-inverse">THANH TOAN</h3>
        <hr>
<p style="color:red"><trong>${message }</trong></p>
        <form:form cssClass="container" modelAttribute="user" method="post" action="${url}"  >
          <div class="row">
            <div class="col-lg-12 col-sm-12 col-12">
              <div class="form-group">
                <form:label path="name" cssClass="text-inverse">Name</form:label>
                <form:input path="name" cssClass="form-control"  placeholder="${user.name}"  required="required"/>
                <form:errors path="name" cssStyle="color: red;"/>
              </div>  
               <div class="form-group">
                <form:label path="email" cssClass="text-inverse">Email</form:label>
                <form:input path="email" type="email" cssClass="form-control"  placeholder="${user.email}"  required="required" />
                <form:errors path="email" cssStyle="color: red;"/>
              </div>  
               <div class="form-group">
                <form:label path="phone" cssClass="text-inverse">Phone</form:label>
                <form:input path="phone" cssClass="form-control"  placeholder="${user.phone}"  required="required"/>
                <form:errors path="phone" cssStyle="color: red;"/>
              </div>  
               <div class="form-group">
                <label>Address</label>
                <input type="text" name="address" class="form-control" placeholder="Address" required="required">
              </div>  
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-lg-12 col-sm-12 col-12 text-center">
                <button class="btn btn-info" type="submit">Submit form</button>
            </div>
          </div>  
          
        </form:form>
      </div>
    </div>  
</div>
<script src="<%=request.getContextPath()%>/resources/js/products/validate-form.js"></script>
        