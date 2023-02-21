<?php

session_start();
include_once 'config/connection.php';
include_once 'build/php/functions.php';

$urlofthispage=$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'];

//type=1 => ارزیاب
//type=1 => مدیر
//type=2 => سرگروه
//type=3 => بینندگان
//approved=0 => کاربر غیر فعال شده
$dateforinsertloglogins=$year.'/'.$month.'/'.$day.' '.$hour.':'.$min.':'.$sec;

if (isset($_POST) & !empty($_POST)) {
    $user = $_POST['username'];
    $pass = $_POST['password'];
    if ((!isset($_POST['submit']) and empty($user)) or empty($pass)){
        $operation="LoginError";
        logsend($operation,$urlofthispage,$connection_maghalat);
        header("location:index?error");
    }
    else{
        $result = mysqli_query($connection_maghalat, "select * from users where username='$user'");
        foreach ($result as $rows){}
        if (empty($rows)){
            $operation="NotFoundUser - Entered User=$user";
            logsend($operation,$urlofthispage,$connection_maghalat);
            header("location:index.php?UserWrong");
        }
        elseif (!password_verify($pass,$rows['password'])){
            $operation="WrongPassword - Entered User=$user";
            logsend($operation,$urlofthispage,$connection_maghalat);
            header("location:index.php?UserWrong");
        }
        else{
            if ($rows['approved']==0){
                $operation="NotApproved - Entered User=$user";
                logsend($operation,$urlofthispage,$connection_maghalat);
                header("location:index.php?NotApprovedUser");
            }
            else{
                if ($user == $rows['username'] and $rows['type']==1){
                    session_start();
                    $_SESSION['username']=$user;
                    $_SESSION['head']=$rows['type'];
                    $_SESSION['islogin']=true;
                    $_SESSION['id']=$rows['id'];
                    $_SESSION['start']=time();
                    $_SESSION['end']=$_SESSION['start']+(36000);
                    $operation="RaterLoginSuccess";
                    logsend($operation,$urlofthispage,$connection_maghalat);
                    header("location:panel.php");
                }
                elseif($user == $rows['username'] and $rows['type']==2){
                    session_start();
                    $_SESSION['username']=$user;
                    $_SESSION['head']=$rows['type'];
                    $_SESSION['islogin']=true;
                    $_SESSION['id']=$rows['id'];
                    $_SESSION['start']=time();
                    $_SESSION['end']=$_SESSION['start']+(36000);
                    $operation="AdminLoginSuccess";
                    logsend($operation,$urlofthispage,$connection_maghalat);
                    header("location:panel.php");
                }
                elseif($user == $rows['username'] and $rows['type']==3){

                    session_start();
                    $_SESSION['username']=$user;
                    $_SESSION['head']=$rows['type'];
                    $_SESSION['islogin']=true;
                    $_SESSION['id']=$rows['id'];
                    $_SESSION['start']=time();
                    $_SESSION['end']=$_SESSION['start']+(36000);
                    $operation="HeaderLoginSuccess";
                    logsend($operation,$urlofthispage,$connection_maghalat);
                    header("location:panel.php");
                }
                elseif($user == $rows['username'] and $rows['type']==4){
                    session_start();
                    $_SESSION['username']=$user;
                    $_SESSION['head']=$rows['type'];
                    $_SESSION['islogin']=true;
                    $_SESSION['id']=$rows['id'];
                    $_SESSION['start']=time();
                    $_SESSION['end']=$_SESSION['start']+(36000);
                    $operation="CityAdminLoginSuccess";
                    logsend($operation,$urlofthispage,$connection_maghalat);
                    header("location:panel.php");
                }
            }
        }
    }
    }
