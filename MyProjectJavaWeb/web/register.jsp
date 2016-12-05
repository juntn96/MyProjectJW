<%-- 
    Document   : register
    Created on : Dec 5, 2016, 8:29:36 PM
    Author     : Jic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/register.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="container-fluid">
            <form action="" method="" class="register-form"> 
                <div class="row">      
                    <div class="col-md-4 col-sm-4 col-lg-4">
                        <label for="firstName">NAME</label>
                        <input name="firstName" class="form-control" type="text">    
                    </div>            
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4">
                        <label for="email">EMAIL</label>
                        <input name="email" class="form-control" type="email">             
                    </div>            
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4">
                        <label for="password">PASSWORD</label>
                        <input name="password" class="form-control" type="password">             
                    </div>            
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4">
                        <label for="password">CONFIRM PASSWORD</label>
                        <input name="cfpassword" class="form-control" type="password">             
                    </div>            
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4">
                        <label>Address</label>
                        <input name="address" class="form-control" type="text">             
                    </div>            
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4">
                        <label>BIRTH DAY</label>
                        <input name="dob" class="form-control" type="date">             
                    </div>            
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-10 col-sm-10 col-xs-10 col-lg-10">
                        <button class="btn btn-default regbutton">Register</button>
                    </div>        
                </div>    
            </form>
        </div>
    </body>
</html>
