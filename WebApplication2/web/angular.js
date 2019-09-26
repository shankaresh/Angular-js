/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

var app = angular.module("nameList", []); 
app.controller("myCtrl", function($scope) {
    $scope.names = [];
    $scope.addItem = function () {
        $scope.names.push($scope.addMe);
        $scope.addMe="";
    };
});