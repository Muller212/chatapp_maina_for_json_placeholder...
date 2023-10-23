import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Models/chat_users.dart';
import '../components/chart.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Masinga organisers", secondaryText: "Bado Mnakam", image: "images/userprofileone.jpg", time: "Now"),
    ChatUsers(text: "Muller Maina", secondaryText: "Ukam na mzinga na machile", image: "images/userprofiletwo.jpg", time: "Yesterday"),
    ChatUsers(text: "Ess MiT", secondaryText: "Qwani i dont have a place in your life?", image: "images/userprofilethree.jpg", time: "23 Oct"),
    ChatUsers(text: "Wee Mzee", secondaryText: "msee gari imetuzimia apa thika", image: "images/userprofilefour.jpg", time: "23 Oct"),
    ChatUsers(text: "Gerry Juja", secondaryText: "we tutachekiana", image: "images/userprofilefive.jpg", time: "22 Oct"),
    ChatUsers(text: "OneLife Rally", secondaryText: "Just landed with the lambo", image: "images/userprofilesix.jpg", time: "21 Oct"),
    ChatUsers(text: "Miller G", secondaryText: "Naona sikuizi unafloss tu", image: "images/userprofileseven.jpg", time: "21 Oct"),
    ChatUsers(text: "Stivo Main", secondaryText: "mbona hukuniambia?", image: "images/userprofileeight.jpg", time: "21 Oct"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Premio Chats",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.blueAccent,size: 20,),
                          SizedBox(width: 2,),
                          Text("New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].text,
                  secondaryText: chatUsers[index].secondaryText,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 1 || index == 1)?true:false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}