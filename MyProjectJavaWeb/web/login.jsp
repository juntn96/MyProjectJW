<%-- 
    Document   : login
    Created on : Dec 5, 2016, 8:44:50 PM
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
                <hr>
                <div class="row">
                    <div class="col-md-4 col-sm-4 col-lg-4">
                        <button class="btn btn-default regbutton">Login</button>
                    </div>        
                </div> 
            </form>
        </div>
    </body>
</html>
