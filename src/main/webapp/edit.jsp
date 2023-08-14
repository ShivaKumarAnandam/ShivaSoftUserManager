<%@page import="com.editservlet.User"%>
<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="registration.css">

 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="css/style.css" />

</head>

<body>
  <div class="form-container">
	<input type="button" class="btnfiled">
	<form method="post" action="EditServlet" class="form">
		<fieldset class="field">
				<legend style="color: teal;"><em><b>Edit form..... </b>edit your credentials..!</em></legend>
				
		<%
		User user= (User)request.getAttribute("user");
		%>
		
		<div class="input-container">
			<i class="fa fa-user icon"></i><input class="input-field" type="text" placeholder="Username" name="username" value="<%= user.getUsername() %>" style="margin-left: 5px"/>
		</div>
		
		<div class="input-container">
			<i class="fa fa-lock icon"></i><input class="input-field" type="password" placeholder="Password" name="password" value= "<%= user.getPassword() %>" style="margin-left: 7px" readonly="readonly"/>
		</div>				

		<div class="input-container">
		    <i class="fa fa-envelope icon"></i><input class="input-field" type="email" placeholder="Email" name="email" value= "<%= user.getEmail() %>"/>
		</div>

		<div class="input-container" >
			<i class="fa fa-solid fa-globe icon"></i><b>&nbsp;&nbsp;Country&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</b><select
				name="country"  >
				<option>Select country</option>
				<option>Afganistan</option>
				<option>Belgium</option>
				<option>Califonia</option>
				<option>India</option>
			</select>
		</div>
				
        <div class="input-container" >
				<i class="fa fa-solid fa-graduation-cap icon"></i><b>Qualification&nbsp;&nbsp;:&nbsp;</b>
				<input type="checkbox" name="qualification" value="bsc" style="margin-bottom: 15px"><em>B.Sc</em>&nbsp;&nbsp;
			    <input type="checkbox" name="qualification" value="btech" style="margin-bottom: 15px"><em>BE/B.Tech</em>&nbsp;&nbsp;
				<input type="checkbox" name="qualification" value="mca" style="margin-bottom: 15px"><em>MCA</em>&nbsp;&nbsp;
				<input type="checkbox" name="qualification" value="mtech" style="margin-bottom: 15px"><em>M.Tech</em>
		</div>

		<div class="input-container">
					<i class="fa fa-mars-double icon"></i><b>&nbsp;Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b> 
					<input type="radio"	name="gender" value="Male" style="margin-bottom: 15px"/><em>Male</em>&nbsp;
					<input type="radio"	name="gender" value="Female" style="margin-bottom: 15px"/><em>Female</em>
		</div>

		<div class="input-container" >
					<i class="fa fa-solid fa-laptop icon"></i><b>Technologies&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</b><select
						name="technologies" size="3" multiple >
						<option>Select Technologies</option>
						<option>J2SE</option>
						<option>J2EE</option>
						<option>J2ME</option>
						<option>Spring</option>
						<option>SpringBoot</option>
						<option>MicroServices</option>
						<option>React JS</option>
						<option>Oracle</option>
					</select>
		</div>		

		<div class="input-container">
					<br><i class="fa fa-address-card icon"></i><b>Address:</b>
		</div>
		<div class="input-address">
			<input class="input-addr" type="text" placeholder="Area" name="address" value= "<%= user.getArea() %>"> 
			<input class="input-addr" type="text" placeholder="City" name="address" value= "<%= user.getCity() %>"> 
			<input class="input-addr" type="text" placeholder="Pin code" name="address" value= "<%= user.getState() %>"> 
			<input class="input-addr" type="text" placeholder="State" name="address" value= "<%= user.getPincode() %>">
		</div>

		<div class="input-container">
			<b>Comments:</b>
			<textarea name="comments" cols="50" rows="2" ></textarea>
		</div>		
	
	    <!-- <i class="fa fa-lock icon"></i> <input type="password"
		name="cpassword" placeholder="Re-Enter Password to confirm Edit"> -->
		
		<div class="input-container">				
			<b>Confirm Password&nbsp;&nbsp;:&nbsp;&nbsp;</b>
			<input type="password" name="cpassword" id="password" />
	           &nbsp;&nbsp;<i class="bi bi-eye-slash" id="togglePassword"></i>
		</div>	
				
		
	
	
						<script>
					        const togglePassword = document.querySelector("#togglePassword");
					        const password = document.querySelector("#password");
					
					        togglePassword.addEventListener("click", function () {
					            // toggle the type attribute
					            const type = password.getAttribute("type") === "password" ? "text" : "password";
					            password.setAttribute("type", type);
					            
					            // toggle the icon
					            this.classList.toggle("bi-eye");
					        });
					
					        // prevent form submit
					       /*  const form = document.querySelector("form");
					        form.addEventListener('submit', function (e) {
					            e.preventDefault();
					        }); */
					    </script>
					    
    	<button type="submit">Edit</button> 
		</fieldset>
	</form>
</div>
<div class="img-container">
		<img src="resetimg.jpg" alt="Example Image" width="850px" height="650px">
</div>
</body>
</html>

