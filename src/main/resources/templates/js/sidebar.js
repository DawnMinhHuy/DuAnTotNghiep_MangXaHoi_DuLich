        document.addEventListener("DOMContentLoaded", function () {
            document.querySelectorAll(".dropdown-toggle").forEach(function (toggle) {
                toggle.addEventListener("click", function (event) {
                    event.preventDefault();
                    const dropdown = this.parentElement;
                    dropdown.classList.toggle("active"); // Toggle active class
                });
            });
        });
    