<%-- 
    Document   : registration
    Created on : Sep 23, 2019, 3:00:09 PM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Vaildation</title>
<script>
function validate() {
var nu = document.forms["fm"]["num"].value;
var phoneno = /^\d{10}$/;
if(nu.match(phoneno))
{
return true;
}
else
{
alert("Not a valid Phone Number");
return false;
}
return true;
};
</script>
<style>
* {
  margin: 0;
  padding: 0;
}
form 
{
  padding-bottom:50px;
  padding-top:50px;
  padding-left: 50px;
  padding-right: 50px;
  border: 4px solid black;
  background: white;
  border-radius: 8px;
}
.css-form input.ng-invalid.ng-touched {
    background-color: #FA787E;
}
.css-form input.ng-valid.ng-touched {
    background-color: #78FA89;
}
</style>
</head>
<body align="center" validate class="css-form" ng-app="WebApplication001" ng-controller="ctrlwebapplication">
<script src="https://code.angularjs.org/1.6.9/angular.js"></script>
<script src="angular.js"></script>
<script src="lib/angular-route.js"></script>
<script src="lib/bootstrap.js"></script>
<div id="heading"><h1>Simple Validation</h1></div><br>
<div id="container">
<form name="fm" action="" onsubmit="return validate();" method="post">

<div id="d1" align="left">
<label id="lb1"><b>First Name :</b></label>
<input type="text" id="fname" placeholder="Enter the first name" ng-model="emp.fname" required/>
</div><br>

<div id="d2" align="left">
<label id="lb2"><b>Last Name :</b></label>
<input type="text" id="lname" placeholder="Enter the last name" ng-model="emp.lname" required/>
</div><br>

<div id="d3" align="left">
<label id="lb3"><b>Mail Id :</b></label>
<input type="email" id="mail" placeholder="Enter the email id" ng-model="emp.mail" required/>
</div><br>

<div id="d4" align="left">
<label id="lb4"><b>Mobile Number :</b></label>
<input type="number" id="num" placeholder="Enter the number" ng-model="emp.number" required/>
</div><br>
 
<div id="d5" align="left">
<label id="lb5"><b>Department :</b></label>
<ul><li ng-repeat="dept in departmentNames">
		{{dept.name}}
		</li></ul>
</div><br>

<div id="d6" align="left">
  <label id="lb6"><b>Gender :</b></label><br>
  <input type="radio" id="gender" ng-model="emp.gender" value="Male" /> Male<br>
  <input type="radio" id="gender" ng-model="emp.gender" value="Female" /> Female<br>
  <input type="radio" id="gender" ng-model="emp.gender" value="Other" /> Other
</div><br>

<div id="d7" align="left">
<label id="lb7"><b>Blood Group :</b></label><br>
<select ng-model="Bgrp">
    <option>{{bgrp.option1}}</option>
    <option>{{bgrp.option2}}</option>
    <option>{{bgrp.option3}}</option>
    <option>{{bgrp.option4}}</option>
</select></div><br>

<div id="d8" align="left">
<label id="lb8"><b>Role :</b></label><input type="radio" ng-model="emp.role" value="development" />Development
<input type="radio" ng-model="emp.role" value="testing" />Testing<br>
</div><br>

Hello {{name(fname,lname)}} ! Your mail id {{email}} must be verified . For update,I will be contacting {{number}} .


<div id="subre">
    <button ng-disabled="form.$invalid" ng-click="save(emp)">view</button>
    <input type="reset">
</div>
<p>Master = {{master | json}}</p>

</form>
</div>

</body>
</html>
