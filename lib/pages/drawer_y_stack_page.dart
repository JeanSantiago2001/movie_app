import 'package:semana09/pages/alert_page.dart';
import'package:semana09/pages/avatar_page.dart';
import 'package:semana09/pages/alert_page2.dart';
import 'package:semana09/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerYStackPage extends StatefulWidget {
  @override
  State<DrawerYStackPage> createState() => _DrawerYStackPageState();
}
class _DrawerYStackPageState extends State<DrawerYStackPage>{
  GlobalKey<ScaffoldState> _scaffolKey = GlobalKey<ScaffoldState>();

  bool isInvisible =true;
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff4c186e),
        // appBar: AppBar(
        //).
        //title: Text("Login"),
        //backgroundColor: Colors.pinkAccent,
        key: _scaffolKey,
        drawer: Drawer(
          backgroundColor: Color(0xff4c186e),
          elevation: 20,
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color:Colors.pinkAccent,
                    image:DecorationImage(
                        fit: BoxFit.cover,
                        image:NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0lLW_68F4CdOLlsQuB10r41uVBNS2tdXjWw&s"
                        )
                    )
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            "https://png.pngtree.com/thumb_back/fh260/background/20230611/pngtree-wolf-animals-images-wallpaper-for-pc-384x480-image_2916211.jpg"
                        ),
                      ),
                      Text(
                        "Admin",
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AvatarPage()));
                },
                leading: Icon(Icons.person, color: Colors.white,),
                title: Text("Avatar Page",
                  style: TextStyle(
                  color: Colors.amber,
                  ),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlertPage()));
                },
                leading: Icon(Icons.warning, color: Colors.white,),
                title: Text("Alert 1",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlertPage2()));
                },
                leading: Icon(Icons.person, color: Colors.white,),
                title: Text("Alert 2",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                leading: Icon(Icons.edit, color: Colors.white,),
                title: Text("Inputs",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              child: IconButton(
                onPressed: () => _scaffolKey.currentState?.openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color:Color(0xff944db7),
                  size: 30.0,
                ),
              ),
            ),
            Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -150,
                  child: MyCircleWidget(
                    colores:[
                      Color(0xff72ff00),
                      Color(0xff00ffe0),
                    ],
                    radius:400,
                  ),
                ),
                Positioned(
                  top:80,
                  left:30,
                  child: MyCircleWidget(
                      radius:50,
                      colores:[
                        Color(0xffffe600),
                        Color(0xff003eff),
                      ]
                  ),
                ),
                Positioned(
                  bottom: -150,
                  left:-100,
                  child: MyCircleWidget(
                    radius:300,
                    colores:[
                      Color(0xffffe600),
                      Color(0xff003eff),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 180.0,
                      child: Text(
                        "Create Your Account",
                        style: TextStyle(
                          color: Color(0xff28a914),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TextField(
                      style: TextStyle(
                        color: Color(0xff945fc5),
                      ),
                      cursorColor: Color(0xff7766ad),
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff7c6cb0),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color(0xff9730ec),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9730ec),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                        color: Color(0xff945fc5),
                      ),
                      cursorColor: Color(0xff7766ad),
                      obscureText: isInvisible,
                      decoration: InputDecoration(
                        hintText: "password",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xff7c6cb0),
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xff72629b),
                        ),
                        suffixIcon: IconButton(
                          icon: isInvisible
                              ? Icon(
                            Icons.visibility_off,
                            color: Color(0xff72629b),
                          )
                              : Icon(
                            Icons.visibility,
                            color: Color(0xff72629b),
                          ),
                          onPressed: (){
                            isInvisible = !isInvisible;
                            //print("Jean");
                            setState(() {
                            });
                          },
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff9730ec),
                            width: 1.4,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  //const MyCircleWidget({
  //Key? key,
  // }) : super(key:key);
  double radius;
  List<Color> colores;

  MyCircleWidget({
    required this.radius,
    required this.colores,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colores,
        ),
        boxShadow: [
          BoxShadow(
            //color: Colors.pink.withOpacity(0.7),
            color: colores[0].withOpacity(0.7),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
    );
  }
}