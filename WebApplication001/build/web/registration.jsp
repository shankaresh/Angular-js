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
var fn = document.forms["fm"]["fname"].value;
var ln = document.forms["fm"]["lname"].value;
var m = document.forms["fm"]["mail"].value;
var nu = document.forms["fm"]["num"].value;
if (fn == "") {
alert("Please enter first name");
return false;
}
if (ln == "") {
alert("Please enter last name");
return false;
}
if (m == "") {
alert("Please enter mail id");
return false;
}
if (nu == "") {
alert("please enter number");
return false;
}
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
}
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
</style>
</head>
<body align="center">
<script src="https://code.angularjs.org/1.6.9/angular.js"></script>
<script src="angular.js"></script>
<div id="heading"><h1>Simple Vaildation</h1></div><br>

<div id="container" ng-app="WebApplication001" ng-controller="ctrlwebapplication">
<form name="fm" action="" onsubmit="return validate()" method="post">

<div id="d1" align="left">
<label id="lb1"><b>First Name :</b></label>
<input type="text" id="fname" placeholder="Enter the first name" ng-model="fnamewebapp">
</div><br>

<div id="d2" align="left">
<label id="lb2"><b>Last Name :</b></label>
<input type="text" id="lname" placeholder="Enter the last name" ng-model="lnamewebapp">
</div><br>

<div id="d3" align="left">
<label id="lb3"><b>Mail Id :</b></label>
<input type="email" id="mail" placeholder="Enter the email id" ng-model="mailwebapp">
</div><br>

<div id="d4" align="left">
<label id="lb4"><b>Mobile Number :</b></label>
<input type="number" id="num" placeholder="Enter the number" ng-model="numberwebapp">
</div><br>

<div id="d5" align="left">
<label id="lb5"><b>College :</b></label>
<ul><li ng-repeat="dept in departmentNames">
		{{dept.name}}
		</li></ul>
</div><br>


Hello {{namewebapp(fnamewebapp,lnamewebapp)}} ! Your mail id {{mailwebapp}} must be verified . For update,I will be contacting {{numberwebapp}} .
<div id="subre">
    <input type="submit">
    <input type="reset">
</div>
</form>
</div>

</body>
</html>
