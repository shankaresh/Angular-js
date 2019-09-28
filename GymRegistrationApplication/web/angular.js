/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var app = angular.module('WebApplicationgym',[]);
app.controller('ctrlwebapplication', function($scope){
    $scope.fnamewebapp = "";
    $scope.lnamewebapp = "";
    $scope.namewebapp = function(fnamewebapp,lnamewebapp)
    {
        return fnamewebapp +" "+lnamewebapp;
    };
    $scope.Ses ={
        option1 : "Morning",
        option2 : "Evening"
    };
    $scope.SessionTiming =[{time: " 5:00 A.M - 8:00 A.M (Morning)"},{time: " 5:00 P.M - 10:00 P.M (Evening)"}];
});