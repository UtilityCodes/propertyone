function updateTime() {
    const now = new Date();
    
    // Update Date
    const dateOptions = { weekday: 'long', day: '2-digit', month: 'short', year: 'numeric' };
    document.querySelector('.time span:first-child').textContent = now.toLocaleDateString('en-US', dateOptions);
    
    // Update Time
    const timeOptions = { hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: true };
    document.querySelector('.time span:last-child').textContent = now.toLocaleTimeString('en-US', timeOptions);
    
    // Update Greeting
    const hour = now.getHours();
    let greeting = "Good Night!";
    if (hour >= 5 && hour < 12) {
        greeting = "Good Morning!";
    } else if (hour >= 12 && hour < 17) {
        greeting = "Good Afternoon!";
    } else if (hour >= 17 && hour < 21) {
        greeting = "Good Evening!";
    }
    document.querySelector('.greetings span:first-child').textContent = greeting;
}

// Run updateTime every second
setInterval(updateTime, 1000);

// Initialize on page load
updateTime();
