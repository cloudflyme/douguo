<?php
    include 'mysql.php';
    $status=$_POST['status'];
    if($status=='in'){
        $username=$_POST['name'];
        $password=$_POST['psw'];
        $phone=$_POST['phone'];
        $sel="select * from userinfo where phone='$phone'";//判断电话是否存在
        $txt=$con->query($sel);
        while($list=$txt->fetch_assoc()){
            $lists=$list;
        };
        if($username!=null){
            $select="select * from userinfo where username='$username'";//判断昵称是否存在
            $text=$con->query($select);
            while($all=$text->fetch_assoc()){
                $alls=$all;
            }
        }
        if($phone!=null&&$phone==$lists["phone"]){
            echo "账号已注册";
        }
        if($username!=null){
            if($username==$alls["username"]){
                echo "昵称已存在";
            }
            if($phone!=$lists["phone"]&&$username!=$alls["username"]){
                $sql="insert into userinfo(username,password,phone) values ('$username','$password','$phone');";
                if($con->query($sql)){
                    echo "注册成功";
                }else{
                    echo "失败";
                }
            }
        }
    }
    if($status=='up'){
        $username=$_POST['name'];
        $password=$_POST['psw'];
        $select="select * from userinfo where phone='$username'";
        $text=$con->query($select);
        while($all=$text->fetch_assoc()){
            $alls=$all;
        }
        if($username==$alls["phone"]){
            if($password==$alls["password"]){
                echo "登陆成功";
                
                if($_POST["checked"]=="yes"){
                    $cookie_name="my_cookie";
                    $cookie_expire= time()+60*60*24*7;
                    $cookie_value= "$username.$password";
                    setcookie($cookie_name,$cookie_value,$cookie_expire);
                }
            }else{
                echo "密码错误";
            }
        }else{
            echo "账号错误";
        }
    }
    $con->close();
?>