document.addEventListener('DOMContentLoaded', function() {
    const tabs = document.querySelectorAll('.inline-page-header a');
    const pages = document.querySelectorAll('.inline-page-body .page');

    tabs.forEach(tab => {
        tab.addEventListener('click', function(e) {
            e.preventDefault(); // Prevent default link behavior
            
            // Remove active class from all tabs and pages
            tabs.forEach(t => t.classList.remove('active'));
            pages.forEach(p => p.classList.remove('active'));
            
            // Add active class to clicked tab
            this.classList.add('active');
            
            // Show corresponding page
            const pageIndex = this.getAttribute('data-page');
            pages[pageIndex].classList.add('active');
        });
    });
});