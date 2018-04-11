<%@ Page Language="C#" AutoEventWireup="true" CodeFile="touristchat.aspx.cs" Inherits="touristchat" EnableEventValidation="false" %>
<%@ Register src="Controls/Friends.ascx" tagname="Friends" tagprefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body { 
  background: url('http://www.publicdomainpictures.net/pictures/50000/velka/flower-meadow.jpg') no-repeat center center fixed; 
   background-size: cover;
}

.chatcontainer {
    border: 2px solid #dedede;
    background-color: #f1f1f1;
    border-radius: 5px;
    padding: 10px;
    margin: 10px 0;
    width:80%;

}

.darker {
    border-color: #ccc;
    background-color: #ddd;
    float:right;
}


.container{
padding: 25px;   
}    
        .auto-style3 {
            width: 100%;
        }
    </style>
         <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script>$(document).ready(function () {
    $(".left-first-section").click(function () {
        $('.main-section').toggleClass("open-more");
    });
});
      $(document).ready(function () {
          $(".fa-minus").click(function () {
              $('.main-section').toggleClass("open-more");
          });
      });</script>
      <style>
        .main-section{
  width: 300px;
  position: fixed;
  right:50px;
  bottom:-350px;
}
.first-section:hover{
  cursor: pointer;
}
.open-more{
  bottom:0px;
  transition:2s;
}
.border-chat{
  border:1px solid #FD8468;
  margin: 0px;
}
.first-section{
  background-color:#FD8468;
}
.first-section p{
  color:#fff;
  margin:0px;
  padding: 10px 0px;
}
.first-section p:hover{
  color:#fff;
  cursor: pointer;
}
.right-first-section{
   text-align: right;
}
.right-first-section i{
  color:#fff;
  font-size: 15px;
  padding: 12px 3px;
}
.right-first-section i:hover{
  color:#fff;
}
.chat-section ul li{
  list-style: none;
  margin-top:10px;
  position: relative;
}
.tlist{
    overflow-y:scroll;
    height:400px;
    margin-top:10px;
    width:30%;
}
.chat-section{
  overflow-y:scroll;
  height:300px;
}
.chat-section ul{
  padding: 0px;
}
.left-chat img,.right-chat img{
  width:50px;
  height:50px;
  float:left;
  margin:0px 10px;
}
.right-chat img{
  float:right;
}
.second-section{
  padding: 0px;
  margin: 0px;
  background-color: #F3F3F3;
  height: 300px;
}
.left-chat,.right-chat{
  overflow: hidden;
}
.left-chat p,.right-chat p{
  background-color:#FD8468;
  padding: 10px;
  color:#fff;
  border-radius: 5px; 
  float:left;
  width:60%;
  margin-bottom:20px;
}
.left-chat span,.right-chat span{
  position: absolute;
  left:70px;
  top:60px;
  color:#B7BCC5;
}
.right-chat span{
  left:45px;
}
.right-chat p{
  float:right;
  background-color: #FFFFFF;
  color:#FD8468;
}
.third-section{
  border-top: 1px solid #EEEEEE;
}
.text-bar input{
  width:90%;
  margin-left:-15px;
  padding:10px 10px;
  border:1px solid #fff;
}
.text-bar a i{
  background-color:#FD8468;
  color:#fff;
  width:30px;
  height:30px;
  padding:7px 0px;
  border-radius: 50%;
  text-align: center;
}
.left-chat:before{
  content: " ";
  position:absolute;
  top:0px;
  left:55px;
  bottom:150px;
  border:15px solid transparent;
  border-top-color:#FD8468; 
}
.right-chat:before{
  content: " ";
  position:absolute;
  top:0px;
  right:55px;
  bottom:150px;
  border:15px solid transparent;
  border-top-color:#fff; 
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
       <div class="container">
        <div class="tlist"> 
            <uc1:Friends ID="Friends" runat="server" />
            </div> 

           <div class="main-section">
        <div class="row border-chat">
            <div class="col-md-12 col-sm-12 col-xs-12 first-section">
                <div class="row">
                    <div class="col-md-8 col-sm-6 col-xs-6 left-first-section">
                        <p>Chat with </p> 
                    </div>
                    <div class="col-md-4 col-sm-6 col-xs-6 right-first-section">
                        <a href="#"><i class="fa fa-minus" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-clone" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-times" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row border-chat">
            <div class="col-md-12 col-sm-12 col-xs-12 second-section">
                <div class="chat-section" id ="chat-section">
                        <p>messages</p>
                </div>
            </div>
        </div>
        <div class="row border-chat">
            <div class="col-md-12 col-sm-12 col-xs-12 third-section">
                <div class="text-bar">
                    <input type="text" id="info3" placeholder="Write messege"/><asp:Button ID="save_buton" runat="server" Text="Button" OnClientClick="return false;" autopostback="false" xmlns:asp="#unknown"  />
                </div>
            </div>
        </div>
    </div>
   <!--Sender: <input type="text" id="info1" value="122" /><br />
    Reciver: <input type="text" id="info2" value="11"/><br />-->
    <!--Msg: <input type="text" id="info3" />-->
       
   <!--<button id="save_butona">save</button>-->
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
  var messageInput = document.getElementById("info3");
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

      var sentOn = date.getDate() + "/" + date.getMonth() + "/" + date.getFullYear() + "  " + date.getHours() + ":" + date.getMinutes();
        if (snap.child("sentBy").val() ===receiver) {
            msg = '<div class="right-chat">' + '<div class="chatcontainer">' +
               snap.child("body").val() +
/*  msg = '<div class="right-chat">' + '<div class="chatcontainer">' +
                '<span class="time-right">' + sentOn + '</span>' +
               snap.child("body").val() +
*/
              '</div>' +
              '</div>';
 
  
} else {
            msg = '<div class="left-chat">' + '<div class="chatcontainer darker">' +
                  snap.child("body").val() + '</div>' +
              '</div>';
        }
      notifiRef.child(sender + "/" + receiver + "/").update({ seen: true });
        $('#chat-section').append(msg);
   directMsgBox.scrollTop = directMsgBox.scrollHeight;

      //msgRef.child(receiver).child(sender).child(snap.child("senderMsgKey").val()).update({ seen: true, lastSeen: firebase.database.ServerValue.TIMESTAMP });

    }, err => console.log(err));

        </script>



        </div>
 
    </form>
</body>
</html>
