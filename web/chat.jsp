<%-- 
    Document   : chat
    Created on : Jan 12, 2022, 8:56:54 PM
    Author     : perri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
        <script type ="text/javascript">
            
            var wsURL;
            if (window.location.protocol === "http:"){
                wsURL = 'ws://';
            }else {
                wsURL = 'wss://';
            }
            var ws = new WebSocket(wsURL + window.location.host + "/ChatApp/chat" );
            ws.onmessage = function(event){
                var chatbox = document.getElementById("chatBox");
                chatbox.innerHTML +=event.data+"<br/>";
            };
            ws.onerror = function (event){
                console.log("error", event);
            };
            function update(){
                var msg1 = document.getElementById("msg").value;
             
                var msg = document.getElementById("testname").value +": " + document.getElementById("msg").value;
                if(msg1 != "")
                {
                    ws.send(msg);
                }else {
                    
                }
                document.getElementById("msg").value="";
                
            }
            
        </script>
    </head>
    <body>
        <div class="wrapper">
            <header class="styleHeader">
                <h1>Hello ${ sessionScope.userName }</h1>
            </header>
            <h3>Start Chatting</h3>
            <div id="chatBox" style="width:500px; height:300px; border:2px solid black;"></div>
            <input type="text" name="msg" id="msg">
            <input type="hidden" id = "testname" value ="${sessionScope.userName}">
            <button onclick="return update()">Send</button>
        </div><!-- comment -->
    </body>
</html>
