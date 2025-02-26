



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


// COMPANY
const companyToggle = document.querySelectorAll('.homespace .company');
const logoutToggle = document.querySelectorAll('.workspace .logout');

companyToggle.forEach(cToggle => {
    cToggle.addEventListener('click', (e) => {
    e.preventDefault();

    const companyDown = cToggle.closest('.homespace').querySelector('.company-down');

    if (companyDown) {
        companyDown.style.display = companyDown.style.display === 'flex' ? 'none' : 'flex';
    }
  });
});


// LOGOUT

logoutToggle.forEach(lToggle => {
    lToggle.addEventListener('click', (e) => {
    e.preventDefault();

    const logoutDown = lToggle.closest('.workspace').querySelector('.logout-down');

    if (logoutDown) {
        logoutDown.style.display = logoutDown.style.display === 'flex' ? 'none' : 'flex';
    }
  });
});



// for a word wrap of a div
// document.addEventListener('DOMContentLoaded', function() {
//   const descElements = document.querySelectorAll('.page-content-body .pcb-content .flex .desc');
  
//   descElements.forEach(function(element) {

//     const originalContent = element.textContent;
//     const originalFontSize = parseInt(window.getComputedStyle(element).fontSize);
//     const maxHeight = parseInt(window.getComputedStyle(element).height);

//     if (element.scrollHeight > maxHeight) {
//       let fontSize = originalFontSize;
      

//       while (element.scrollHeight > maxHeight && fontSize > 8) {
//         fontSize -= 1;
//         element.style.fontSize = fontSize + 'px';
//       }
//     }
//   });
// });

