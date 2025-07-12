// prevent_back.js
(function() {
  // Force disable back navigation
  window.history.pushState(null, null, window.location.href);
  window.history.pushState(null, null, window.location.href);
  
  window.addEventListener('popstate', function() {
    // Redirect to logout page when back button is pressed
    window.location.replace('logout.php');
    
    // If the redirect doesn't work immediately, force it
    setTimeout(function() {
      window.location.href = 'logout.php';
    }, 100);
  });
  
  // Disable keyboard shortcuts for back navigation
  document.addEventListener('keydown', function(e) {
    if ((e.key === 'Backspace' || e.keyCode === 8) && 
        (document.activeElement.tagName !== 'INPUT' && 
         document.activeElement.tagName !== 'TEXTAREA')) {
      e.preventDefault();
      return false;
    }
  });
})();