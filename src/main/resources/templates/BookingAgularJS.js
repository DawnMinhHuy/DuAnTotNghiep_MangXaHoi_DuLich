let host = "http://localhost:8081/REST";

const app = angular.module("app", []);

app.controller("ctrl", function ($scope, $http) {
    // Khởi tạo biến
    $scope.form = {}; // Biến lưu trữ dữ liệu form
    $scope.items = []; // Danh sách các mục
    $scope.showCreateButton = true;
    $scope.showUpdateButton = false;
    $scope.showDeleteButton = false;
    $scope.showResetButton = true;

    // Reset form
    $scope.reset = function () {
        $scope.form = { status: "Booked", createddate: new Date() };
        $scope.showCreateButton = true;
        $scope.showUpdateButton = false;
        $scope.showDeleteButton = false;
        $scope.showResetButton = true;
        $scope.load_all();
    };

    // Load tất cả dữ liệu
    $scope.load_all = function () {
        const url = `${host}/bookings`;
        $http
            .get(url)
            .then((response) => {
                $scope.items = response.data;
                console.log("Load all success:", response);
            })
            .catch((error) => {
                console.log("Error loading data:", error);
            });
    };

    // Chỉnh sửa mục
    $scope.edit = function (bookingid) {
        const url = `${host}/bookings/${bookingid}`;
        $http
            .get(url)
            .then((response) => {
                $scope.form = response.data;
                $scope.showCreateButton = false;
                $scope.showUpdateButton = true;
                $scope.showDeleteButton = true;
                console.log("Edit success:", response);
            })
            .catch((error) => {
                console.log("Error editing data:", error);
            });
    };

    // Tạo mới
    $scope.create = function () {
        const url = `${host}/bookings`;
        const item = angular.copy($scope.form);
        $http
            .post(url, item)
            .then((response) => {
                $scope.items.push(response.data);
                $scope.reset();
                console.log("Create success:", response);
            })
            .catch((error) => {
                console.log("Error creating data:", error);
            });
    };

    // Cập nhật mục
    $scope.update = function () {
        const url = `${host}/bookings/${$scope.form.bookingid}`;
        const item = angular.copy($scope.form);
        $http
            .put(url, item)
            .then((response) => {
                const index = $scope.items.findIndex(
                    (item) => item.bookingid === $scope.form.bookingid
                );
                $scope.items[index] = response.data;
                $scope.reset();
                console.log("Update success:", response);
            })
            .catch((error) => {
                console.log("Error updating data:", error);
            });
    };

    // Xóa mục
    $scope.delete = function (bookingid) {
        const url = `${host}/bookings/${bookingid}`;
        $http
            .delete(url)
            .then((response) => {
                const index = $scope.items.findIndex(
                    (item) => item.bookingid === bookingid
                );
                $scope.items.splice(index, 1);
                $scope.reset();
                console.log("Delete success:", response);
            })
            .catch((error) => {
                console.log("Error deleting data:", error);
            });
    };

    // Gọi hàm khởi tạo
    $scope.reset();
});
