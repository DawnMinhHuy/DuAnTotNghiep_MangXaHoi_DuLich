let host = "http://localhost:8080/REST";
const app = angular.module("app",[]);
app.controller("ctrl", function($scope,$http){
    $scope.form = {}        
    $scope.items = []
    $scope.reset = function(){
        $scope.form = {isactivated : true,createdat : new Date()}
        $scope.load_all();
    }
    $scope.load_all = function(){
        var url =`${host}/payment`;
        $http.get(url).then(response => {
            $scope.items = response.data;
            $scope.showCreateButton = true; // Hiển thị nút Create mặc định
            $scope.showUpdateButton = false;
            $scope.showDeleteButton = false;
            $scope.showResetButton = true;
            console.log("Success",response)
        }).catch(error => {
            console.log("Error",error)
        });
    }
    $scope.edit = function(paymentid){
        var url = `${host}/payment/${paymentid}`;
        $http.get(url).then(response => {
            $scope.form = response.data;
            // $scope.key = key;
            $scope.showCreateButton = false; // Hiển thị nút Create mặc định
            $scope.showUpdateButton = true;
            $scope.showDeleteButton = true;
            $scope.showResetButton = true;
            console.log("Success",response)
        }).catch(error => {
            console.log("Error",error)
        });
    }
    $scope.create = function(){
        var item = angular.copy($scope.form);
        var url = `${host}/payment`;
        $http.post(url, item).then(response => {
            $scope.items.push(item);
            $scope.reset();
            console.log("Success",response)
        }).catch(error => {
            console.log("Error",error)
        });
    }
    $scope.update = function(){
        var item = angular.copy($scope.form);
        var url = `${host}/payment/${$scope.form.paymentid}`;
        $http.put(url,item).then(response => {
            var index = $scope.items.findIndex(item => item.paymentid == $scope.form.paymentid)
            $scope.items[index] = response.data;
            $scope.reset();
            console.log("Success",response)
        }).catch(error => {
            console.log("Error",error)
        });
    }
    $scope.delete = function(paymentid){
        var url = `${host}/payment/${paymentid}`;
        $http.delete(url).then(response => {
            var index = $scope.items.findIndex(item => item.paymentid == paymentid)
            $scope.items.splice(index,1);
            $scope.reset();
            console.log("Success",response)
        }).catch(error => {
            console.log("Error",error)
        });
    }

    $scope.reset();
    // $scope.load_all();
});