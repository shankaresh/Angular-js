<%-- 
    Document   : problem2
    Created on : Sep 27, 2019, 1:39:10 PM
    Author     : exam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://code.angularjs.org/1.6.9/angular.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div ng-app=""  ng-init="fName='Shankar';lName='Gowda'">
            <div ng-init="person={fName:'Shankar',lName:'Gowda'}">
                <div ng-init="array=[1,15]">
                 <p>My first expression in angular js: {{3+3}}</p>
                 <p>The value of 5 times 10 is : {{5*10}}</p>
                 <p>The full name is: {{ fName + " " + lName }}</p>
                 <p>The name is {{ person.fName }}</p>
                 <p>The result is {{ array[1] }}</p> 
               </div>
            </div>
        </div>

    </body>
</html>