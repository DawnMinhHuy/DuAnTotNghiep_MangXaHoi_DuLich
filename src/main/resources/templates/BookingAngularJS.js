let host = "http://localhost:8080/REST";
const app = angular.module("app",[]);
app.controller("ctrl", function($scope,$http){
    $scope.form = {}
    $scope.items = []
    $scope.reset = function(){
        $scope.form = {status : false,createddate : new Date()}
        $scope.load_all();
    }
    $scope.load_all = function(){
        var url =`${host}/bookings`;
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
    $scope.edit = function(bookingid){
        var url = `${host}/bookings/${bookingid}`;
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
        var url = `${host}/bookings`;
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
        var url = `${host}/bookings/${$scope.form.bookingid}`;
        $http.put(url,item).then(response => {
            var index = $scope.items.findIndex(item => item.bookingid == $scope.form.bookingid)
            $scope.items[index] = response.data;
            $scope.reset();
            console.log("Success",response)
        }).catch(error => {
            console.log("Error",error)
        });
    }
    $scope.delete = function(bookingid){
        var url = `${host}/bookings/${bookingid}`;
        $http.delete(url).then(response => {
            var index = $scope.items.findIndex(item => item.bookingid == bookingid)
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