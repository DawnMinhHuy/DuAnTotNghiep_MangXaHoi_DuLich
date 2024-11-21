<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar - Admin Panel</title>
    <!-- Link to Sidebar CSS -->
    <link rel="stylesheet" href="<c:url value='/css/sidebar.css' />">
</head>
<body>
    <div class="sidebar">
        <h2>Hope UI</h2>
        <ul>
            <li><a href="#overview">Tổng quan</a></li>

            <!-- Dropdown Example 1 -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle">Bài đăng</a>
                <ul class="dropdown-menu">
                    <li><a href="#statistics">Thống kê</a></li>
                    <li><a href="#report">Báo cáo</a></li>
                    <li><a href="#details">Chi tiết</a></li>
                </ul>
            </li>

            <!-- Dropdown Example 2 -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle">Người dùng</a>
                <ul class="dropdown-menu">
                    <li><a href="#statistics">Thống kê</a></li>
                    <li><a href="#report">Báo cáo</a></li>
                    <li><a href="#details">Chi tiết</a></li>
                </ul>
            </li>

            <!-- Additional Menu Items -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle">Tour</a>
                <ul class="dropdown-menu">
                    <li><a href="#statistics">Thống kê</a></li>
                    <li><a href="#details">Chi tiết</a></li>
                </ul>
            </li>

            <li class="dropdown">
                <a href="#" class="dropdown-toggle">Công ty</a>
                <ul class="dropdown-menu">
                    <li><a href="#statistics">Thống kê</a></li>
                    <li><a href="#details">Chi tiết</a></li>
                </ul>
            </li>

            <!-- Logout Section -->
            <li><a href="#logout" class="logout">Thoát</a></li>
        </ul>
    </div>
    <!-- Link to Sidebar JS -->
    <script src="<c:url value='/js/sidebar.js' />"></script>
</body>
