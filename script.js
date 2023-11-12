document.addEventListener("DOMContentLoaded", function () {
    var dropdownBtn = document.getElementById("dropdown");
    var dropdownContent = document.getElementById("drop");

    dropdownBtn.addEventListener("click", function () {
        dropdownContent.classList.toggle("show");
    });

    window.addEventListener("click", function (event) {
        if (!event.target.matches("#dropdown")) {
            var dropdowns = document.getElementsByClassName("dropdown-list");
            for (var i = 0; i < dropdowns.length; i++) {
                var openDropdown = dropdowns[i];
                if (openDropdown.classList.contains("show")) {
                    openDropdown.classList.remove("show");
                }
            }
        }
    });
});
function cross(x) {
    x.classList.toggle("change");
  }