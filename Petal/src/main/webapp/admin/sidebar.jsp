
<div class="navigation">
            <div class="menuToggle">
                <img src="../all/Img/logo.png" alt="">
                <p>Petal</p>
            </div>
            <ul>
                <li class="list">
                    <a href="home.jsp" style="--clr:#f44336;">
                    <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                    <span class="text">Dashbord</span>
                    </a>
                </li>
                <li class="list active">
                    <a href="doctor.jsp" style="--clr:#ffa117;">
                    <span class="icon"><ion-icon name="person-add-outline"></ion-icon></span>
                    <span class="text">Doctor</span>
                    </a>
                </li>
                
                <li class="list">
                    <a href="seller.jsp" style="--clr:#2196f3;">
                    <span class="icon"><ion-icon name="camera-outline"></ion-icon></span>
                    <span class="text">Seller</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" style="--clr:#0fc70f;">
                    <span class="icon"><ion-icon name="camera-outline"></ion-icon></span>
                    <span class="text">Patient</span>
                    </a>
                </li>
                <li class="list">
                    <a href="#" style="--clr:#b145e9;">
                    <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                    <span class="text"><button type="submit" onclick="openPopup()">Sign Out</button></span>
                    </a>
                </li>
            </ul>
        </div>
        <script type="text/javascript">
        
        
        let list = document.querySelectorAll('.list');
        function activeLink(){
            list.forEach((item) =>
            item.classList.remove('active'));
            this.classList.add('active');
        }
        list.forEach((item)=>
        item.addEventListener('click',activeLink))
        </script>