<%@include file="/include/head.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;

}
/* custom scroll bar */
::-webkit-scrollbar {
    width: 10px;
}
::-webkit-scrollbar-track {
    background: white;
}
::-webkit-scrollbar-thumb {
    background: rgb(245, 129, 129);
}
::selection{
  background: rgb(0,123,255,0.3);
}
.content{
  max-width: 1250px;
  margin: auto;
  padding: 0 30px;
}
.navbar{
  margin-top: 25px;
  border-radius: 28px;
  height: 55px;
  border: 2px solid black;
  position: fixed;
  width: 100%;
  z-index: 2;
  padding: 5px;
  transition: all 0.3s ease;
  background-color: grey;
}
.navbar.sticky{
  background: white;
  padding: 10px 0;
  box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.1);
}
.navbar .content{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.navbar .logo a{
  color: black;
  font-size: 28px;
  font-weight: 600;
  text-decoration: none;
  
}
.navbar .menu-list{
  display: inline-flex;
}
.menu-list li{
  list-style: none;
}
.menu-list li a{
  color: black;
  font-size: 24px;
  font-weight: 500;
  margin-left: 85px;
  text-decoration: none;
  transition: all 0.3s ease;
  padding:6px;
}
.menu-list li a:hover{
  color: #007bff;
}
.icon{
  color: black;
  font-size: 20px;
  cursor: pointer;
  display: none;
}
.menu-list .cancel-btn{
  position: absolute;
  right: 30px;
  top: 20px;
}
@media (max-width: 1230px) {
  .content{
    padding: 0 60px;
  }
}
@media (max-width: 1100px) {
  .content{
    padding: 0 40px;
  }
}
@media (max-width: 900px) {
  .content{
    padding: 0 30px;
  }
}
@media (max-width: 868px) {
  body.disabled{
    overflow: hidden;
  }
  .icon{
    display: block;
  }
  .icon.hide{
    display: none;
  }
  .navbar .menu-list{
    position: fixed;
    height: 100vh;
    width: 100%;
    max-width: 400px;
    left: -100%;
    top: 0px;
    display: block;
    padding: 40px 0;
    text-align: center;
    background: #222;
    transition: all 0.3s ease;
  }
  .navbar.show .menu-list{
    left: 0%;
  }
  .navbar .menu-list li{
    margin-top: 45px;
  }
  .navbar .menu-list li a{
    font-size: 23px;
    margin-left: -100%;
    transition: 0.6s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  }
  .navbar.show .menu-list li a{
    margin-left: 0px;
  }
}
@media (max-width: 380px) {
  .navbar .logo a{
    font-size: 27px;
  }
}
</style>
<body>
<nav class="navbar">
    <div class="content">
      <div class="logo">
        <img src="images/logo.png.jpg" height=47px>
      </div>
      <ul class="menu-list">
        <div class="icon cancel-btn">
          <i class="fas fa-times"></i>
        </div>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="About.jsp">About</a></li>
        <li><a href="Contact.jsp">Contact</a></li>
        <li><a href="login.jsp">Log In</a></li>
      </ul>
      <div class="icon menu-btn">
        <i class="fas fa-bars"></i>
      </div>
    </div>
  </nav>
  <script>
    const body = document.querySelector("body");
    const navbar = document.querySelector(".navbar");
    const menuBtn = document.querySelector(".menu-btn");
    const cancelBtn = document.querySelector(".cancel-btn");
    menuBtn.onclick = ()=>{
      navbar.classList.add("show");
      menuBtn.classList.add("hide");
      body.classList.add("disabled");
    }
    cancelBtn.onclick = ()=>{
      body.classList.remove("disabled");
      navbar.classList.remove("show");
      menuBtn.classList.remove("hide");
    }
    window.onscroll = ()=>{
      this.scrollY > 20 ? navbar.classList.add("sticky") : navbar.classList.remove("sticky");
    }
  </script>
</body>