let popup = document.getElementById("popup");
        function openPopup() {
            popup.classList.add("open-popup");
        }
        function closePopup() {
            popup.classList.remove("open-popup");
        }
        
        console.log(popup);
        
        let list = document.querySelectorAll('.list');
        function activeLink(){
            list.forEach((item) =>
            item.classList.remove('active'));
            this.classList.add('active');
        }
        list.forEach((item)=>
        item.addEventListener('click',activeLink))