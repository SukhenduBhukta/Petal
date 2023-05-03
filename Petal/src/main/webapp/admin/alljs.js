let popup = document.getElementById("popup");
function openPopup() {
	popup.classList.add("open-popup");
}
function closePopup() {
	popup.classList.remove("open-popup");
}
let toggle = document.querySelector('.toggle');
        let navication = document.querySelector('.navication');
        let main = document.querySelector('.main');

        toggle.onclick = function(){
            navication.classList.toggle('active');
            main.classList.toggle('active');
        }


// -------------------------
        let list = document.querySelectorAll('.navication li');
        function activeLink() {
            list.forEach((item) =>
                item.classList.remove('hovered'));
            this.classList.add('hovered');
        }
        list.forEach((item) =>
            item.addEventListener('mouseover', activeLink));