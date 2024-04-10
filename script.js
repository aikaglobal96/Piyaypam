//pour l'image en tete
const images = document.querySelectorAll('.imgContainer img');
let index = 0;

function nextImage(){
	images[index].classList.remove('current');
	index = (index + 1) %images.length;
	images[index].classList.add('current');
}

setInterval(nextImage, 10000);


//pour le menu horizontal
const menu = document.querySelector('.menu');
const prev = document.querySelector('.prev');
const next = document.querySelector('.next');

prev.addEventListener('click',()=>{
	menu.scrollLeft -= 100;
});

next.addEventListener('click',()=>{
	menu.scrollLeft += 100;
});

