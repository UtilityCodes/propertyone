// Select all elements with the class .menu
const menus = document.querySelectorAll('.nav-icon .menu');

// Add a click event listener to each .menu
menus.forEach(menu => {
  menu.addEventListener('click', (e) => {
    e.preventDefault(); // Prevent the default link behavior

    // Find the corresponding .submenu within the same .nav-icon
    const submenu = menu.closest('.nav-icon').querySelector('.submenu');

    // Toggle the display of the .submenu
    if (submenu) {
      submenu.style.display = submenu.style.display === 'flex' ? 'none' : 'flex';
    }
  });
});