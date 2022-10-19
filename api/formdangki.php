
<!--PHP-->

<?php
require('config.php')
?>
<div class="modal-body" id="formdangky">
    
    <form method="POST" action="xulydangki.php" id="form-signup">
    <div class="close" >
        <span aria-hidden="true">&times;</span>
    </div>
    <script>
       $(".close").click(function(){
          window.location = "index.php"
       })
    </script>
    <div class="title">ĐĂNG KÍ</div>
        <div class="form-group">
            <label for="exampleInputHoten">Họ và tên:</label>
            <input type="text" class="form-control" id="exampleInputHoten" name="hoten" autofocus required>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail">Email:</label>
            <input type="email" class="form-control" id="exampleInputEmail" name="email" required>
        </div>
        <div class="form-group">
            <label for="exampleInputDiachi">Địa chỉ:</label>
            <input type="text" class="form-control" id="exampleInputDiachi" name="diachi" required>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword">Mật khẩu:</label>
            <input type="password" class="form-control" id="exampleInputPassword" name="matkhau" required>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Nhập lại mât khẩu:</label>
            <input type="password" class="form-control" id="exampleInputPassword1" name="xacnhanmatkhau" required>
        </div>
        <div class="form-group">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Đồng ý với điều khoản và dịch vụ</label>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success" name="dangki">Submit</button>
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
        width: 100%;
        height: 100%;
        position: fixed;
        top: 0;
        padding: 12px !important;
        backdrop-filter: blur(50px);
        background-color: none;
        
    }
    
    .title{
        width: 100%;
        height: auto;
        font-size: 30px;
        text-align: center;
    }
    #form-signup {
        width: 40%;
        height: auto;
        position: relative;
        margin: 0% 30%;
        padding: 30px 0;
        background-color: rgba(235, 235, 235, 0.9);
        border-radius: 15px;
        border: 1px solid rgba(0, 0, 0, 0.5);

    }

    .button{
        width: 100%;
        text-align: center;
    }

    .form-group {
        width: 70%;
        margin: 3% 15%;
        padding: 0;
    }
    .form-group > input{
        background-color: rgba(186, 186, 186, 0);
        box-shadow: 0 0 2px black;
    }
</style>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>