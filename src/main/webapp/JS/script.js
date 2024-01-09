

document.addEventListener('DOMContentLoaded', function () {
    const cartButton = document.getElementById('cart');
    const cartModal = document.getElementById('cartModal');
    const closeModalButton = document.getElementById('closeModal');

    const burger = document.querySelector('.navbar-burger');
    const menu = document.querySelector('.navbar-menu');

    cartButton.addEventListener('click', function () {
        cartModal.style.display = 'flex';
    });

    closeModalButton.addEventListener('click', function () {
        cartModal.style.display = 'none';
    });


    burger.addEventListener('click', () => {
        burger.classList.toggle('is-active');
        menu.classList.toggle('is-active');
    });



});

