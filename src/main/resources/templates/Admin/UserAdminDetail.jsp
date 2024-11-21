<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Schedule Management</title>
    <link rel="stylesheet" th:href="@{/css/userdetailadmin.css}">
    <script th:src="@{/js/app.js}"></script>
</head>
<body>
    <div th:replace="fragments/header :: header"></div>

    <div class="main-content">
        <header>
            <h1>Danh sách</h1>
            <button class="add-button">+ Add Customer</button>
        </header>
        <section id="user-list-section">
            <div class="table-container">
                <table id="user-table">
                    <thead>
                        <tr>
                            <th>Tracking ID</th>
                            <th>Hình ảnh</th>
                            <th>Người dùng</th>
                            <th>Nội dung</th>
                            <th>Số lượng tố cáo</th>
                            <th>Ngày đăng</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr th:each="user : ${users}">
                            <td th:text="${user.id}"></td>
                            <td><img th:src="@{/images/hat.png}" alt="Hat"></td>
                            <td th:text="${user.username}"></td>
                            <td th:text="${user.content}"></td>
                            <td th:text="${user.reports}"></td>
                            <td th:text="${user.date}"></td>
                            <td>
                                <button class="edit-btn">✏️</button>
                                <button class="delete-btn">🗑️</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</body>
</html>
