<%-- 
    Document   : problem3
    Created on : Sep 27, 2019, 1:43:41 PM
    Author     : exam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <script src="https://code.angularjs.org/1.6.9/angular.js"></script>
       <script src="angular.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body ng-app="WebApp">
        <div ng-controller="CtrlReg">
            <ul><li ng-repeat="x in names | orderBy:'country'">{{x.name +','+x.country | uppercase}}</li>
            </ul> 
        </div>
        </body>
</html>