

<!--PHP-->

<?php
require('config.php')
?>
<div class="modal-body">
    <form method="POST" action="xulydangnhap.php" id="form-login">
        <div class="close" >
        <span aria-hidden="true">&times;</span>
    </div>
    <script>
       $(".close").click(function(){
          window.location = "index.php"
       })
    </script>
    <div class="title">ĐĂNG NHẬP</div>
        <div class="form-group form-group-login">
            <label for="exampleInputEmail">Email:</label>
            <input type="email" class="form-control" id="exampleInputEmail" name="email" required>
        </div>
        <div class="form-group form-group-login">
            <label for="exampleInputPassword">Mật khẩu:</label>
            <input type="password" class="form-control" id="exampleInputPassword" name="matkhau" required>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-primary" name="dangnhap">Đăng nhập</button>
        </div>
        
        

    </form>
</div>



<style>
    .close{
        width: 30px;
        height: 30px;
        position: absolute;
        top: 10px;
        right: 15px;
        cursor: pointer;
    }
 
    .modal-body{
        width: 100vw;
        height: 100vh;
        backdrop-filter: blur(50px);
        background-color: none;
        position: fixed;
    }
    
    .title{
        width: 100%;
        height: auto;
        font-size: 30px;
        text-align: center;
    }
    #form-login {
        position: relative;
        width: 40%;
        height: auto;
        margin: 8% 30%;
        padding: 50px 0;
        background-color: rgba(235, 235, 235, 0.9);
        border-radius: 15px;
        border: 1px solid rgba(0, 0, 0, 0.5);


    }

    .button{
        margin-top: 10%;
        width: 100%;
        text-align: center;
    }
   

    .form-group-login {
        width: 70%;
        margin: 5% 15%;
        padding: 0;
        
    }
    .form-group-login > input{
        background-color: rgba(186, 186, 186, 0);
        box-shadow: 0 0 2px black;
    }
    .g-recaptcha{
        width: 100%;
        position: relative;
        text-align: center;
    }
</style>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>