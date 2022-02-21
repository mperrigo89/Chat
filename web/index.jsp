<%-- 
    Document   : index.jsp
    Created on : Jan 12, 2022, 8:53:10 PM
    Author     : perri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Chat</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="main.css">
    </head>
    <body>
        <div class ="wrapper">
            <header class="styleHeader">
                <h1>Welcome to simple chat</h1>
            </header>
            <section>
                <form action="chat">
                    <h3>Name: <input type="text" name="userName"></h3><!-- comment -->
                    <input type="submit" value="Join">
                </form>
            </section>

        </div>
    </body>
</html>
