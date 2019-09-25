/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


var app = angular.module('WebApplication001',[]);
app.controller('ctrlwebapplication', function($scope){
    $scope.fnamewebapp = "";
    $scope.lnamewebapp = "";
    $scope.Gender = {male:true,female:false};
    $scope.departmentNames =[
		{name: "B.Tech - IT"},
		{name: "B.E - CSE"},
		{name: "B.E - ECE"},
            {name: "B.E - MECH"},
        {name: "B.E - CIVIL"}];	
    $scope.namewebapp = function(fnamewebapp,lnamewebapp)
    {
        return fnamewebapp +" "+lnamewebapp;
    }
});
