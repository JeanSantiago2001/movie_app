import 'package:semana09/pages/home_page.dart';
import 'package:semana09/pages/password_input_page.dart';
import 'package:flutter/material.dart';

import 'calendar_input_page.dart';
import 'captura_valores_Input_Page.dart';
import 'general_input_page.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InputPage SIIII"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          ItemComponentWidget(
              title: "General-Inputs",
              toPage: GeneralInputPage(),
          ),
          ItemComponentWidget(
            title: "Password-Inputs",
            toPage: PasswordInputsPage(),
          ),
          ItemComponentWidget(
            title: "Captura Valores del Input Page",
            toPage: CapturaValoresdelInputPage(),
          ),
          ItemComponentWidget(
            title: "Calendar Input Page",
            toPage: CalendarInputPage(),
          ),
        ],
      ),
    );
  }
}
