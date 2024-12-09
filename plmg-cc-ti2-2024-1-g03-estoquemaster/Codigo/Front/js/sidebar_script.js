document.getElementById("openSidebar").addEventListener("click", function() {
    document.getElementById("sidebar").style.width = "250px";
  });
  
  document.addEventListener("click", function(event) {
    var sidebar = document.getElementById("sidebar");
    var openButton = document.getElementById("openSidebar");
    if (!sidebar.contains(event.target) && event.target !== openButton) {
      sidebar.style.width = "0";
    }
  });
  