document.addEventListener('DOMContentLoaded', () => {

    // 1. Custom Cursor
    const cursor = document.querySelector('.cursor-follower');
    document.addEventListener('mousemove', (e) => {
        gsap.to(cursor, {
            x: e.clientX,
            y: e.clientY,
            duration: 0.1
        });
    });

    // Hover effects for cursor
    const hoverables = document.querySelectorAll('a, button, .project-item');
    hoverables.forEach(el => {
        el.addEventListener('mouseenter', () => cursor.classList.add('cursor-active'));
        el.addEventListener('mouseleave', () => cursor.classList.remove('cursor-active'));
    });

    // 2. Hero Animations
    const tl = gsap.timeline();
    tl.to('.hero-title', { opacity: 1, y: 0, duration: 1, ease: 'power4.out', delay: 0.5 })
        .to('.hero-subtitle', { opacity: 1, y: 0, duration: 1, ease: 'power3.out' }, '-=0.5')
        .to('.btn-primary', { opacity: 1, duration: 0.8 }, '-=0.5');

    // 3. Scroll Animations
    gsap.registerPlugin(ScrollTrigger);

    // About Section
    gsap.from('.about-image-wrapper', {
        scrollTrigger: {
            trigger: '.about-section',
            start: 'top 80%',
        },
        x: -50,
        opacity: 0,
        duration: 1.2,
        ease: 'power3.out'
    });

    gsap.from('.about-text', {
        scrollTrigger: {
            trigger: '.about-section',
            start: 'top 80%',
        },
        x: 50,
        opacity: 0,
        duration: 1.2,
        ease: 'power3.out',
        delay: 0.2
    });

    // Projects Stagger
    gsap.from('.project-item', {
        scrollTrigger: {
            trigger: '.projects-grid-modern',
            start: 'top 85%',
        },
        y: 50,
        opacity: 0,
        duration: 1,
        stagger: 0.2,
        ease: 'power2.out'
    });

    // Document Cards Stagger
    gsap.set('.doc-card', { opacity: 0, y: 30 }); // Initial state
    ScrollTrigger.batch('.doc-card', {
        start: 'top 90%',
        onEnter: batch => gsap.to(batch, { opacity: 1, y: 0, stagger: 0.1, duration: 0.8, ease: 'back.out(1.7)' }),
        onEnterBack: batch => gsap.to(batch, { opacity: 1, y: 0, stagger: 0.1, duration: 0.8 })
    });

    // 4. Magnetic Buttons
    const magnets = document.querySelectorAll('.magnetic-btn');
    magnets.forEach((magnet) => {
        magnet.addEventListener('mousemove', (e) => {
            const position = magnet.getBoundingClientRect();
            const x = e.clientX - position.left - position.width / 2;
            const y = e.clientY - position.top - position.height / 2;

            gsap.to(magnet, { x: x * 0.3, y: y * 0.3, duration: 0.3, ease: 'power2.out' });
        });
        magnet.addEventListener('mouseleave', () => {
            gsap.to(magnet, { x: 0, y: 0, duration: 1, ease: 'elastic.out(1, 0.3)' });
        });
    });

    // 5. Mobile Menu Toggle
    const menuBtn = document.querySelector('.menu-btn');
    const mobileMenu = document.querySelector('.mobile-menu-overlay');
    const mobileLinks = document.querySelectorAll('.mobile-nav-item');
    let menuOpen = false;

    if (menuBtn) {
        menuBtn.addEventListener('click', () => {
            if (!menuOpen) {
                menuBtn.classList.add('open');
                mobileMenu.classList.add('active'); // Matches CSS
                menuOpen = true;
            } else {
                menuBtn.classList.remove('open');
                mobileMenu.classList.remove('active');
                menuOpen = false;
            }
        });
    }

    // Close menu when link is clicked
    mobileLinks.forEach(link => {
        link.addEventListener('click', () => {
            menuBtn.classList.remove('open');
            mobileMenu.classList.remove('active');
            menuOpen = false;
        });
    });

    // 6. Project Modal Logic
    window.openProjectModal = function (title, description, imageUrl, category) {
        const modal = document.getElementById('projectModal');
        const modalTitle = document.getElementById('modalTitle');
        const modalDesc = document.getElementById('modalDescription');
        const modalImg = document.getElementById('modalImage');
        const modalCat = document.getElementById('modalCategory');

        if (modal && modalTitle && modalDesc && modalImg && modalCat) {
            modalTitle.innerText = title;
            modalDesc.innerText = description;
            modalImg.src = imageUrl;
            modalCat.innerText = category;

            modal.style.display = 'flex';
            document.body.style.overflow = 'hidden'; // Prevent scroll

            gsap.fromTo('.modal-content',
                { opacity: 0, scale: 0.9, y: 30 },
                { opacity: 1, scale: 1, y: 0, duration: 0.5, ease: 'power3.out' }
            );
        }
    };

    window.closeProjectModal = function () {
        const modal = document.getElementById('projectModal');
        if (modal) {
            gsap.to('.modal-content', {
                opacity: 0,
                scale: 0.9,
                y: 30,
                duration: 0.3,
                ease: 'power3.in',
                onComplete: () => {
                    modal.style.display = 'none';
                    document.body.style.overflow = 'auto';
                }
            });
        }
    };

    // Close on click outside
    window.onclick = function (event) {
        const modal = document.getElementById('projectModal');
        if (event.target == modal) {
            closeProjectModal();
        }
    };
});
