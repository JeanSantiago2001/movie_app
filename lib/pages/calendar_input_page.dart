import 'package:flutter/material.dart';

class CalendarInputPage extends StatefulWidget {

  @override
  State<CalendarInputPage> createState() => _CalendarInputPageState();
  }

class _CalendarInputPageState extends State<CalendarInputPage> {
  TextEditingController _dateTimeController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CalendarPage"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            TextField(
              controller: _dateTimeController,
              toolbarOptions: ToolbarOptions(
                copy: false,
                paste: false,
                cut: false,
                selectAll: false,
              ),
              decoration: InputDecoration(
                hintText: "Fecha de nacimiento",
                suffixIcon: Icon(Icons.date_range),
              ),
              onTap: (){
                FocusScope.of(context).requestFocus(FocusNode());
                selectData();
              },
            ),
          ],
        ),
      ),
    );
  }

  selectData() async{
    DateTime? dateSelected = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2030),
    );
    if(dateSelected != null){
      _dateTimeController.text=dateSelected.toString().substring(0,10);
    }
  }
}



