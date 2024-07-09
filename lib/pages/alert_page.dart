import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Jean Título del Alertdialog"),
        backgroundColor: Colors.white,
        elevation: 50.0,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          //Image.asset(
          //"assets/images/check_green.svg.png",
            Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQWN-SLzk5eeEuA9zBJKzsM0qbvtLsKDfJ-w&s",
              height: 90.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Flutter alert",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style:
                  GoogleFonts.poppins(color: Colors.black.withOpacity(0.8)),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        actions: [
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("aceptar")),
          Text("boton"),
          TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Cerrar")),
          ],
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          onPressed: (){
            showMyAlert(context);
          },
          child: Text("botón de alerta"),
        ),
      ),
    );
  }
}
