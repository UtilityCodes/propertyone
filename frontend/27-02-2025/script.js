



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








// MAIN DROPDOWNS
const moreOptions = document.querySelectorAll('.options-tab .more-options');

const addBtn = document.querySelectorAll('.options-tab .add-btn');
const importBtn = document.querySelectorAll('.options-tab .import-btn');
const exportBtn = document.querySelectorAll('.options-tab .export-btn');

const editDiv = document.querySelectorAll('.pcb-content .edit');
const deleteDiv = document.querySelectorAll('.pcb-content .delete');

// More option dropdown
moreOptions.forEach(mOptions => {
  mOptions.addEventListener('click', (e) => {
    e.preventDefault();

    const moreDrop = mOptions.closest('.options-tab').querySelector('.extra-options');

    if (moreDrop) {
      moreDrop.style.display = moreDrop.style.display === 'block' ? 'none' : 'block';
    }
  });
});


// register dropdown
addBtn.forEach(aBtn => {
  aBtn.addEventListener('click', (e) => {
    e.preventDefault();

    const addDrop = aBtn.closest('.options-tab').querySelector('.options-tab .register');

    if (addDrop) {
      addDrop.style.display = addDrop.style.display === 'block' ? 'none' : 'block';
    }
  });
});


// import dropdown
importBtn.forEach(iBtn => {
  iBtn.addEventListener('click', (e) => {
    e.preventDefault();

    const importDrop = iBtn.closest('.options-tab').querySelector('.options-tab .import');

    if (importDrop) {
      importDrop.style.display = importDrop.style.display === 'block' ? 'none' : 'block';
    }
  });
});


// export dropdown
exportBtn.forEach(eBtn => {
  eBtn.addEventListener('click', (e) => {
    e.preventDefault();

    const exportDrop = eBtn.closest('.options-tab').querySelector('.options-tab .export');

    if (exportDrop) {
      exportDrop.style.display = exportDrop.style.display === 'block' ? 'none' : 'block';
    }
  });
});


// edit dropdown
editDiv.forEach(eDiv => {
  eDiv.addEventListener('click', (e) => {
    e.preventDefault();

    const editDrop = eDiv.closest('.pcb-boxes').querySelector('.sub-section .edit');

    if (editDrop) {
      editDrop.style.display = editDrop.style.display === 'block' ? 'none' : 'block';
    }
  });
});


// delete dropdown
deleteDiv.forEach(dDiv => {
  dDiv.addEventListener('click', (e) => {
    e.preventDefault();

    const deleteDrop = dDiv.closest('.pcb-boxes').querySelector('.sub-section .delete');

    if (deleteDrop) {
      deleteDrop.style.display = deleteDrop.style.display === 'block' ? 'none' : 'block';
    }
  });
});

