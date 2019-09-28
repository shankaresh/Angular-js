/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


var app = angular.module('WebApplication001',[]);
app.controller('ctrlwebapplication', function($scope){
    $scope.fname="";
    $scope.lname="";
    $scope.email="";
    $scope.departmentNames =[{name: "B.Tech - IT"},
	{name: "B.E - CSE"},
	{name: "B.E - ECE"},
        {name: "B.E - MECH"},
        {name: "B.E - CIVIL"}];
    $scope.bgrp ={
        option1 : "A and other",
        option2 : "B and other",
        option3 : "AB and other",
        option4 : "O and other"
    };
    $scope.name = function(fname,lname)
    {
        return fname+" "+lname;
    };
    $scope.master = {};
    $scope.save= function(emp) {
        $scope.master = angular.copy(emp);
    };
});
