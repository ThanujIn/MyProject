<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="chat" EnableEventValidation="false"%>
<%@ Register src="Controls/touristchat.ascx" tagname="Friends" tagprefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chat</title>


    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/profilemasterstyles.css" rel="stylesheet" type="text/css" media="all" />
    <style>
        #fname{
    width: 50%;
    padding: 5px 5px;
    margin: 2px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    overflow-wrap:break-word;

}

 .chatcontainer {
    border: 2px solid #dedede;
    background-color: #f1f1f1;
    border-radius: 5px;
    padding: 10px;
    margin: 10px 0;
    overflow-wrap:break-word;
  width:70%;
  float:left;
}

.darker {
    border-color: #ccc;
    background-color: #ddd;
  float:right;  
overflow-wrap:break-word;
}

.chatcontainer::after {
    content: "";
    clear: both;
    display: table;
}


.time-right {
    float: right;
    color: #aaa;
}

.time-left {
    float: left;
    color: #999;
}



    </style>

</head>
<body>
    <form id="form1" runat="server">
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
   
          </div>
    <div class="collapse navbar-collapse" id="myNavbar">
       <ul class="nav navbar-nav navbar-right">
            
          <li><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><span class="glyphicon glyphicon-log-out"></span> Exit Chat</asp:LinkButton></li>
            
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-3 sidenav">
      Chat List   <div class="well2">
    <uc1:Friends ID="Friends" runat="server" />
      </div>
    </div>
    <div class="col-sm-7 text-left"> 
      <div class="well">
        Chat With   <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
      </div> <div class="well2" id="chat-section">


      </div>
      
  <div style="background-color:dimgrey;padding-left:8em;padding-top:1em;height:50px"><input type="text" id="fname" name="firstname" placeholder="Message.."><asp:Button ID="save_buton" runat="server" Text="send"  OnClientClick="return false;" autopostback="false" xmlns:asp="#unknown" />
      </div>

    </div>
    <div class="col-sm-2 sidenav">
     
         <div class="well">
        
      </div>
   
    </div>
  </div>
</div>
  <script src="https://www.gstatic.com/firebasejs/4.9.0/firebase.js"></script>
    <script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyAEmDl9b76kEKSQ23yFEw7INflf9Lbz9dI",
    authDomain: "cccccc-db918.firebaseapp.com",
    databaseURL: "https://cccccc-db918.firebaseio.com",
    projectId: "cccccc-db918",
    storageBucket: "",
    messagingSenderId: "666488471557"
  };
  firebase.initializeApp(config);
  //var inf1 = 'sender';
 // var inf2 = 'reciver';
  var messageInput = document.getElementById("fname");
  var directMsgBox = document.getElementById("chat-section");
      var sender = '<%= Session["UserId"] %>';
        var receiver = '<%= Session["CurrentProfileId"] %>';
        var sendByName = '<%=Session["Name"]%>';

 //var sender = document.getElementById("info1").value;
  //var receiver = document.getElementById("info2").value;
  var data;
  var msgRef = firebase.database().ref().child('messages');
  var notifiRef = firebase.database().ref().child('notification');
  $(document).ready(function () {
      $(messageInput).keyup(function (event) {
          if (event.keyCode === 13) {
              $(save_buton).click();
          }
      });
      $(save_buton).click(function () {
 //        var sender = document.getElementById("info1").value;
   //       var receiver = document.getElementById("info2").value;
          data = {
              sentBy: sender,
              sendByName:sendByName,
              body: messageInput.value,
              timestamp: firebase.database.ServerValue.TIMESTAMP,
                seen:false         

          }
          //msgRef.push(data);
        var senderKey = msgRef.child(sender).child(receiver).push(data).getKey();
         var receiverKey = msgRef.child(receiver).child(sender).push(data).getKey();
        //msgRef.child(sender).child(receiver).child(senderKey).update({ senderMsgKey: senderKey });
          //msgRef.child(receiver).child(sender).child(newKey).update({ senderMsgKey: senderKey });
       notifiRef.child(receiver).child(sender).set(data);
          messageInput.value = "";

      });
  });
    msgRef.child(sender).child(receiver).on('child_added', snap => {
      var msg;

      var timestamp = snap.child("timestamp").val().toString().substring(0, 10);
      var date = new Date(timestamp * 1000);

      var sentOn = date.getDate() + "/" + (date.getMonth()+1) + "/" + date.getFullYear() + "  " + date.getHours() + ":" + date.getMinutes();
        if (snap.child("sentBy").val() ===receiver) {
            msg = '<div class="chatcontainer">' +
               '<p>' + snap.child("body").val() + '</p>'+
            '<span class="time-left">' + sentOn + '</span>' +
                  '</div>'+'</div>';

  
} else {
            msg = '<div class="chatcontainer darker">' +
                '<p>' +
                 snap.child("body").val() + '</p>' + '<span class="time-right">' + sentOn + '</span>' + '</div>' + '</div>';
        }
      notifiRef.child(sender + "/" + receiver + "/").update({ seen: true });
        $('#chat-section').append(msg);
   directMsgBox.scrollTop = directMsgBox.scrollHeight;

      //msgRef.child(receiver).child(sender).child(snap.child("senderMsgKey").val()).update({ seen: true, lastSeen: firebase.database.ServerValue.TIMESTAMP });

    }, err => console.log(err));

        </script>




         </form>
</body>
</html>