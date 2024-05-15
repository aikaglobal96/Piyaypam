//pour l'image en tete
const images = document.querySelectorAll('.imgContainer img');
let index = 0;

function nextImage(){
	images[index].classList.remove('current');
	index = (index + 1) %images.length;
	images[index].classList.add('current');
}

setInterval(nextImage, 10000);


//pour le menu header
const menuBar = document.querySelector('.open-menu');
const menuBar0 = document.querySelector('.close-menu');
const menuList = document.querySelector('.menuHeader');



menuBar.addEventListener('click',()=>{
	menuList.classList.toggle('menu-on') 
});

menuBar0.addEventListener('click',()=>{
	menuList.classList.remove('menu-on')
});


//pour le menu slide
    
	