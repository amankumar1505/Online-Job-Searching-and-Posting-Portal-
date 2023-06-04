<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_component/all_css.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<c:if test="${userobj.role ne 'admin' }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<%@include file="all_component/navbar.jsp" %>
<div class="continer p-2"></div>
		
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-body">
						<div class="text-center text-success">
						<i class="fa fa-user-friends fa-3x"></i>
						

							<c:if test="${not empty succMsg}">
          <div class="alert alert-success" role="alert">${succMsg}</div>
                 </c:if>
           
           <h5>Add jobs</h5>
						</div>

							<form action="add_job" method="post">
								<div class="form-group">
									<label>Enter Title</label> <input type="text" name="title"
										required class="form-control">
										
								</div>
								<div class="form-row">
								<div class="form-group col-md-4">
								<label>Location</label> <select name="location" class="custom-select " id= "inlineFormCustomSelectPref">
								<option selected> Choose...</option>
								<option value="Odisha"> Odisha </option>
								<option value="Jharkhand"> Jharkhand </option>
								<option value="Gujrat"> Gujrat </option>
								<option value="Bhubaneswar"> Bhubaneswar </option>
								<option value="Delhi">Delhi </option>
								<option value="Banglore">Banglore </option>
								
								<option value="Bihar">Bihar </option>
								<option value="Hydrabad">Hydrabad</option>
								
								
								</select>
								</div>
								<div class="form-group col-md-4">
								<label>Category</label> <select  class="custom-select " id= "inlineFormCustomSelectPref" name="category">
								<option selected> Choose...</option>
								<option value="IT"> IT </option>
								<option value="Software Developer">Software Developer </option>
								<option value="Java Developer">Java Developer </option>
								<option value="php Developer">php Developer </option>
								<option value="Banking">Banking </option>
								<option value="Teacher">Teacher </option>
								
								</select>
								</div>
								<div class="form-group col-md-4">
								<label>Status</label> <select  class="form-control "  name="status">
								
								
							
								<option  class="Active" value="Active">Active </option>
								<option class="Inactive" value="Inactive">Inactive </option>
								</select>
								</div>
								</div>
								<div class="form-group">
								<label>Enter Description</label>
								<textarea required rows="6" cols="" name="desc" class="form-control"></textarea>
								
								</div>
								<button class="btn btn-success">Publish Job</button>
								</form>
								</div>
								</div>
								
	
								</div>

</body>
</html>