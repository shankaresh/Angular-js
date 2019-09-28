<%-- 
    Document   : gymform
    Created on : Sep 28, 2019, 2:59:48 PM
    Author     : guestact
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Page</title>
<script>
function validate() {
var nu = document.forms["fm"]["number"].value;
var ht = document.forms["fm"]["height"].value;
var wt = document.forms["fm"]["weight"].value;
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

var htwtno = /^\d{3}$/;
if(ht.match(htwtno))
{
return true;
}
else
{
alert("Not a proper height");
return false;
}

if(wt.match(htwtno))
{
return true;
}
else
{
alert("Not a proper weight");
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
body{
    text-align: center;
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
<body>
<script src="https://code.angularjs.org/1.6.9/angular.js"></script>
<script src="angular.js"></script>
<div id="heading"><h1><b>GYM REGISTRATION</b></h1></div><br>

<div id="container" ng-app="WebApplicationgym" ng-controller="ctrlwebapplication">
<form name="fm" action="" onsubmit="return validate()" validate method="post" class="css-form">

<div id="d1" align="left">
<label id="lb1"><b>First Name :</b></label>
<input type="text" id="fname" placeholder="Enter the first name" ng-model="fnamewebapp" required/>
</div><br>

<div id="d2" align="left">
<label id="lb2"><b>Last Name :</b></label>
<input type="text" id="lname" placeholder="Enter the last name" ng-model="lnamewebapp" required/>
</div><br>

<div id="d3" align="left">
  <label id="lb3"><b>Gender :</b></label><br>
  <input type="radio" id="gender" ng-model="Gender" value="Male" /> Male<br>
  <input type="radio" id="gender" ng-model="Gender" value="Female" /> Female<br>
  <input type="radio" id="gender" ng-model="Gender" value="Other" /> Other
</div><br>

<div id="d4" align="left">
<label id="lb4"><b>Mail Id :</b></label>
<input type="email" id="mail" placeholder="Enter the email id" ng-model="mailwebapp"  required/>
</div><br>

<div id="d5" align="left">
<label id="lb5"><b>Mobile Number :</b></label>
<input type="number" id="number" placeholder="Enter the number" ng-model="numberwebapp" required/>
</div><br>

<div id="d6" align="left">
<label id="lb6"><b>Height :</b></label>
<input type="number" id="height" placeholder="Enter the height" ng-model="heightwebapp" required/>cms
</div><br>

<div id="d7" align="left">
<label id="lb7"><b>Weight :</b></label>
<input type="number" id="weight" placeholder="Enter the wight" ng-model="wighttwebapp" required/>kg
</div><br>

<div id="d8" align="left">
    <label id="lb8"><b>Address :</b></label><br>
<textarea id="address" placeholder="Enter the address" ng-model="addresswebapp" required/></textarea>
</div><br>

<div id="d9" align="left">
<label id="lb9"><b>Session :</b></label>
<select ng-model="Session">
    <option>{{Ses.option1}}</option>
    <option>{{Ses.option2}}</option>
</select>
</div><br>

<div id="drule" align="left">
    <label id="lbrule"><b>Hello {{namewebapp(fnamewebapp,lnamewebapp)}} ! Refer Rules given below :</b></label><br>
    <ul><li ng-repeat="session in SessionTiming">{{session.time}}</li></ul>
</div>

<div id="subre">
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</div>
</form>
</div>

</body>
</html>