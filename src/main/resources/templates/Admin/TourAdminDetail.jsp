<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Schedule Management</title>
    <link rel="stylesheet" href="tourdetailadmin.css">
</head>
<body>

    <!-- Sidebar -->
    <jsp:include page="sidebar.jsp" />

    <!-- Main Content Area -->
    <div class="main-content">
        <div class="tour-page">
            <!-- Header -->
            <header class="page-header">
                <h1>Danh sách các tour du lịch</h1>
                <div class="sort-dropdown">
                    <label for="sort">Sort by:</label>
                    <select id="sort">
                        <option value="popularity">Popularity</option>
                        <option value="price">Price</option>
                        <option value="duration">Duration</option>
                    </select>
                </div>
            </header>
        
            <main class="content-container">
                <!-- Left Column: Tour Cards -->
                <section class="tour-list">
                    <c:forEach var="tour" items="${tours}">
                        <div class="tour-card">
                            <img src="${tour.image}" alt="Tour Image" class="tour-thumbnail">
                            <div class="tour-info">
                                <span class="tour-category">${tour.destination}</span>
                                <h2 class="tour-title">${tour.title}</h2>
                                <p class="tour-details">
                                    <span>${tour.departures}</span> |
                                    <span>${tour.description}</span>
                                </p>
                                <div class="tour-meta">
                                    <span class="tour-rating">★★★★★</span>
                                    <span class="tour-price">$${tour.id_Schedule} <small>per person</small></span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </section>
        
                <!-- Right Column: Filters -->
                <aside class="filters">
                    <div class="filter-section">
                        <h3>Availability</h3>
                        <label for="from-date">From</label>
                        <input type="date" id="from-date">
                        <label for="to-date">To</label>
                        <input type="date" id="to-date">
                        <button class="check-availability">Check Availability</button>
                    </div>
        
                    <div class="filter-section">
                        <h3>Theme</h3>
                        <ul>
                            <li><input type="checkbox" id="water-activities"><label for="water-activities">Water activities</label></li>
                            <li><input type="checkbox" id="social-distancing"><label for="social-distancing">Good for social distancing</label></li>
                        </ul>
                    </div>
        
                    <div class="filter-section">
                        <h3>Duration</h3>
                        <ul>
                            <li><input type="checkbox" id="short"><label for="short">0-3 hours</label></li>
                            <li><input type="checkbox" id="medium"><label for="medium">3-5 hours</label></li>
                        </ul>
                    </div>
        
                    <div class="filter-section">
                        <h3>Destination</h3>
                        <ul>
                            <li><input type="checkbox" id="destination1"><label for="destination1">Biscayne Bay</label></li>
                            <li><input type="checkbox" id="destination2"><label for="destination2">Downtown Miami</label></li>
                        </ul>
                    </div>
                </aside>
            </main>
        </div>
    </div>

</body>
</html>
