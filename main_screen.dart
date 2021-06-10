import 'package:bamboogrove/menu.dart';
import 'package:flutter/material.dart';
import 'package:bamboogrove/login_screen.dart';
import 'package:bamboogrove/userinfo.dart';

class Mainscreen extends StatefulWidget {
  final Userinfo user;

  const Mainscreen({Key key, this.user}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("BAMBOO GROVE RESTAURANT"),
          backgroundColor:Colors.cyan.shade700,
          ),
          drawer:Drawer(
            child:ListView(
              children:[
                UserAccountsDrawerHeader(
                  decoration:BoxDecoration(color:Colors.cyan[700]),
                  accountName: Text(widget.user.username.substring(0,1).toUpperCase()
                  +widget.user.username.substring(1),
                  style:TextStyle(fontSize:20)),
                 accountEmail: Text(widget.user.email,style:TextStyle(fontSize:15),),
                 currentAccountPicture:CircleAvatar(
                   backgroundColor:Theme.of(context).platform == TargetPlatform.android
                   ?Colors.white
                   :Colors.cyan[800],
                child:Text(widget.user.email.toString().substring(0,1).toUpperCase(),
                style:TextStyle(fontSize:40),)
                 ),
                 ),

            ListTile(
              title:Text("HOME"),
              onTap:(){
                Navigator.pop(context);
              }
            ),
            ListTile(
              title:Text("MY PROFILE"),
              onTap:(){
                Navigator.pop(context);
              }
            ),
            ListTile(
              title:Text("MAIN MENU"),
                onTap:(){
                Navigator.push
                  (context,MaterialPageRoute(builder:
                  (content)=>Mainmenu())
                  );
              }
            ),
            ListTile(
              title:Text("NOTIFICATION"),
              onTap:(){
                Navigator.pop(context);
              }
            ),
            ListTile(
              title:Text("CART"),
              onTap:(){
                Navigator.pop(context);
              }
            ),
            ListTile(
              title:Text("LOG OUT"),
              onTap:(){
                Navigator.push
                  (context,MaterialPageRoute(builder:
                  (content)=>Loginscreen())
                  );
              })
           ])),
           body:Center(
              child:Container(
                constraints:BoxConstraints.expand(),
                decoration: BoxDecoration(image:DecorationImage(
                  image:AssetImage('assets/images/background.jpg'), 
                fit:BoxFit.cover,
                colorFilter:new ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.dstATop)),
                ),
            child:Column(
              children: [
                Text(''+widget.user.username.substring(0,1).toUpperCase()+widget.user.username.substring(1)),
                Text(''+widget.user.email),
                Text(''+widget.user.date),
                Text(''+widget.user.rating),
                Text(''+widget.user.credit),
                Text(''+widget.user.status),

              ],

            )
          ),
        )
    ));
  }
}