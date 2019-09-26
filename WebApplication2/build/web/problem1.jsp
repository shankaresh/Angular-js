<%-- 
    Document   : problem1
    Created on : Sep 26, 2019, 11:11:15 AM
    Author     : exam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>   
    </head>
    <style type="text/css">
        .css-form input.ng-invalid.ng-touched {
            background-color: #FA787E;
        }
        .css-form input.ng-valid.ng-touched {
            background-color: #78FA89;
        }
    </style>
    <body ng-app="nameList" ng-controller="myCtrl">
        <script src="https://code.angularjs.org/1.6.9/angular.js"></script>
        <script src="angular.js"></script>
        <h1>NAMES ADDING SESSION!</h1>
        <div>
        <form name="form" validate class="css-form">
        <ul><li ng-repeat="txt in names">{{txt}}</li></ul>
        Name : <input ng-model="addMe" required/>
        <button type="submit" ng-click="addItem()">Add</button>
        </form>
</div>
    </body>
</html>
	
				