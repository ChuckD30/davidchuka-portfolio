(function() {
    var burger = document.querySelector('.burger');
    var navbarItems = document.querySelector('a.navbar-item');
    var nav = document.querySelector('#'+burger.dataset.target);

    burger.addEventListener('click', function () {
        navbarItems.style.background ='#5652A3'
        navbarItems.style.fontSize = '10000px;'
        burger.classList.toggle('is-active');
        nav.classList.toggle('is-active');
    });
})