/* =============================================================
   SNELGROVE ICE CREAM — Main JavaScript (Shopify)
   ============================================================= */

document.addEventListener('DOMContentLoaded', function() {

  // ---- Navigation scroll behavior ----
  var nav = document.querySelector('.nav');
  if (nav) {
    var onScroll = function() {
      nav.classList.toggle('scrolled', window.scrollY > 10);
    };
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();
  }

  // ---- Mobile hamburger menu ----
  var hamburger = document.querySelector('.nav__hamburger');
  var mobileMenu = document.querySelector('.nav__mobile');
  if (hamburger && mobileMenu) {
    function closeMenu() {
      hamburger.classList.remove('open');
      hamburger.setAttribute('aria-expanded', 'false');
      mobileMenu.classList.remove('open');
      document.body.style.overflow = '';
    }

    hamburger.addEventListener('click', function() {
      var isOpen = hamburger.classList.toggle('open');
      hamburger.setAttribute('aria-expanded', String(isOpen));
      mobileMenu.classList.toggle('open', isOpen);
      document.body.style.overflow = isOpen ? 'hidden' : '';
    });

    mobileMenu.querySelectorAll('.nav__mobile-link').forEach(function(link) {
      link.addEventListener('click', closeMenu);
    });

    // Close on click outside the menu
    document.addEventListener('click', function(e) {
      if (mobileMenu.classList.contains('open') &&
          !mobileMenu.contains(e.target) &&
          !hamburger.contains(e.target)) {
        closeMenu();
      }
    });

    // Close on Escape key
    document.addEventListener('keydown', function(e) {
      if (e.key === 'Escape' && mobileMenu.classList.contains('open')) {
        closeMenu();
        hamburger.focus();
      }
    });

    // Reset menu state when resizing past the mobile breakpoint
    window.addEventListener('resize', function() {
      if (window.innerWidth > 900 && mobileMenu.classList.contains('open')) {
        closeMenu();
      }
    }, { passive: true });
  }

  // ---- Active nav link ----
  var currentPath = window.location.pathname;
  document.querySelectorAll('.nav__link, .nav__mobile-link').forEach(function(link) {
    var href = link.getAttribute('href');
    if (href && currentPath.indexOf(href) === 0 && href !== '/') {
      link.classList.add('active');
    }
  });

  // ---- Intersection Observer for scroll-in animations ----
  var animatedEls = document.querySelectorAll('[data-animate]');
  if (animatedEls.length) {
    var observer = new IntersectionObserver(function(entries) {
      entries.forEach(function(entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('animated');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });

    animatedEls.forEach(function(el) { observer.observe(el); });
  }

});
