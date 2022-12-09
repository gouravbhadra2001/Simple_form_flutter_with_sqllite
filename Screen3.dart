import 'package:flutter/material.dart';
import 'package:basic_form/database_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:printing/printing.dart';
import 'package:basic_form/Screen1.dart';
import 'package:basic_form/pdfprint.dart';
import 'package:pdf/pdf.dart';

class Screen3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Screen3State();
  }
}


class Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.confirmation_num_outlined), color: Colors.black,onPressed:(){
        },),
        title: Text("Cofirmation", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        leadingWidth: double.maxFinite/2,
        bottomOpacity: 0.3,
        scrolledUnderElevation: 40.0,
        elevation: 50,
        shape: StadiumBorder(side: BorderSide.none),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            focalRadius: 5.0,
            colors: [ Colors.white38, Colors.white54,Colors.white]
          )
        ),
                      child: Padding(
              padding: EdgeInsets.all(30.0),
              child: ListView(
                  children: <Widget>[
                    SizedBox(height:20.0),
                    Text("Personal Details", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0),),
                    _createPersonalTable(),
                    SizedBox(height: 20.0,),
                    Text("Educational Details", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0),),
                    _createEducationalTable()
                  ],
            )
            )

            )
        ),
    );
  }

  DataTable _createPersonalTable(){
    return DataTable(
      border: TableBorder(borderRadius: BorderRadius.circular(20.0)),
      showBottomBorder: true,
        headingRowColor:
        MaterialStateColor.resolveWith((states) => Colors.orange),
        columns: _createColumns1(), rows: _createRows1());
  }

  List<DataColumn> _createColumns1(){
    return [
      DataColumn(label: Text("Property", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),),
      DataColumn(label: Text("Value", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),)
    ];
  }

  List<DataRow> _createRows1(){
    return [
      DataRow(cells:[
        DataCell(Text("ID"),),
        DataCell(Text(array[0]['id'].toString()))
      ],
      ),
    DataRow(cells:[
    DataCell(Text("Name"),),
    DataCell(Text(array[0]['name']))
    ],),
      DataRow(cells:[
        DataCell(Text("Phone No"),),
        DataCell(Text(array[0]['phone_no']))
      ],),
      DataRow(cells:[
        DataCell(Text("Email"),),
        DataCell(Text(array[0]['email']))
      ],),
      DataRow(cells:[
        DataCell(Text("Current Address"),),
        DataCell(Text(array[0]['current_address']))
      ],),
      DataRow(cells:[
        DataCell(Text("Town/Village/City"),),
        DataCell(Text(array[0]['town']))
      ],),
      DataRow(cells:[
        DataCell(Text("District"),),
        DataCell(Text(array[0]['district']))
      ],),
      DataRow(cells:[
        DataCell(Text("Post Office"),),
        DataCell(Text(array[0]['post_office']))
      ],),
      DataRow(cells:[
        DataCell(Text("State"),),
        DataCell(Text(array[0]['state']))
      ],),
      DataRow(cells:[
        DataCell(Text("Country"),),
        DataCell(Text(array[0]['country']))
      ],),
      DataRow(cells:[
        DataCell(Text("Pin Code"),),
        DataCell(Text(array[0]['pin']))
      ],),
      DataRow(cells:[
        DataCell(Text("Date of Birth"),),
        DataCell(Text(array[0]['dob']))
      ],),
      DataRow(cells:[
        DataCell(Text("Age"),),
        DataCell(Text(array[0]['age']))
      ],),
      DataRow(cells:[
        DataCell(Text("Designation"),),
        DataCell(Text(array[0]['designation']))
      ],),
      DataRow(cells:[
        DataCell(Text("Annual Income(LPA)"),),
        DataCell(Text(array[0]['income']))
      ],),
      DataRow(cells:[
        DataCell(Text("Sex"),),
        DataCell(Text(array[0]['sex']))
      ],),
      DataRow(cells:[
        DataCell(Text("Religion"),),
        DataCell(Text(array[0]['religion']))
      ],),

    ];
  }

  DataTable _createEducationalTable(){
    return DataTable(
        headingRowColor:
        MaterialStateColor.resolveWith((states) => Colors.cyanAccent),
        columns: _createColumns1(), rows: _createRows2());
  }

  List<DataRow> _createRows2(){
    return [
      DataRow(cells:[
        DataCell(Text("School Details", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),),
        DataCell(Text(''))
      ],),
      DataRow(cells:[
        DataCell(Text("Class X", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),),
        DataCell(Text(''))
      ],),
      DataRow(cells:[
        DataCell(Text("School Name"),),
        DataCell(Text(array[1]['School_Name_X']))
      ],),
      DataRow(cells:[
        DataCell(Text("Board Name"),),
        DataCell(Text(array[1]['Board_name_X']))
      ],),
      DataRow(cells:[
        DataCell(Text("School Address"),),
        DataCell(Text(array[1]['School_Address_X']))
      ],),
      DataRow(cells:[
        DataCell(Text("Aggregate(%)"),),
        DataCell(Text(array[1]['Aggregate_X']))
      ],),
      DataRow(cells:[
        DataCell(Text("Class XII", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),),
        DataCell(Text(''))
      ],),
      DataRow(cells:[
        DataCell(Text("School Name"),),
        DataCell(Text(array[1]['School_Name_XII']))
      ],),
      DataRow(cells:[
        DataCell(Text("Board Name"),),
        DataCell(Text(array[1]['Board_name_XII']))
      ],),
      DataRow(cells:[
        DataCell(Text("School Address"),),
        DataCell(Text(array[1]['School_Address_XII']))
      ],),
      DataRow(cells:[
        DataCell(Text("Aggregate(%)"),),
        DataCell(Text(array[1]['Aggregate_XII']))
      ],),
      DataRow(cells:[
        DataCell(Text("College Details", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),),
        DataCell(Text(''))
      ],),
      DataRow(cells:[
        DataCell(Text("Undergraduate", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),),
        DataCell(Text(''))
      ],),
      DataRow(cells:[
        DataCell(Text("College Name"),),
        DataCell(Text(array[1]['College_Name_UG']))
      ],),
      DataRow(cells:[
        DataCell(Text("University Name"),),
        DataCell(Text(array[1]['University_name_UG']))
      ],),
      DataRow(cells:[
        DataCell(Text("College Address"),),
        DataCell(Text(array[1]['College_Address_UG']))
      ],),
      DataRow(cells:[
        DataCell(Text("CGPA"),),
        DataCell(Text(array[1]['CGPA_UG']))
      ],),

    ];
  }
}

