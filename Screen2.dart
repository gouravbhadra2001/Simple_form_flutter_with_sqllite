

import 'package:basic_form/cat.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'Screen1.dart';
import 'Screen3.dart';

class Screen2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Screen2State();
  }
}

class Screen2State extends State<Screen2>{
  var _formKey1 = GlobalKey<FormState>();
  TextEditingController XSchoolNameController = TextEditingController();
  TextEditingController XBoardNameController = TextEditingController();
  TextEditingController XAddressController = TextEditingController();
  TextEditingController XAggregateController = TextEditingController();
  TextEditingController XIISchoolNameController = TextEditingController();
  TextEditingController XIIBoardNameController = TextEditingController();
  TextEditingController XIIAggregateController = TextEditingController();
  TextEditingController XIIAddressController = TextEditingController();
  TextEditingController CollegeNameController = TextEditingController();
  TextEditingController UniversityNameController = TextEditingController();
  TextEditingController CollegeAddressController = TextEditingController();
  TextEditingController CGPAController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors:
        [
          Colors.orangeAccent, Colors.purpleAccent, Colors.purpleAccent, Colors.orangeAccent,
        ]

        )
      ),
      child: Scaffold(

        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("Educational Details", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, shadows: [Shadow(
          offset: Offset(2.5, -2.5), //position of shadow
          blurRadius: 2.0, //blur intensity of shadow
          color: Colors.blue.withOpacity(0.5), //color of shadow with opacity
        ),], fontWeight: FontWeight.bold),),
            bottomOpacity: 0.3,
            scrolledUnderElevation: 40.0,
            elevation: 20,
            shape: StadiumBorder(side: BorderSide.none),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.orangeAccent,

            leading: Icon(Icons.edit, color: Colors.white, shadows: [Shadow(
              offset: Offset(2.5, -2.5), //position of shadow
              blurRadius: 2.0, //blur intensity of shadow
              color: Colors.blue.withOpacity(0.9), //color of shadow with opacity
            ),],)),
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Form(
                  key: _formKey1,
                  child: ListView(
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag
                    ,
                    children: <Widget>[
                      Text(
                        "-" * 47,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "School Details:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Class X Details:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        enabled: true,
                        controller: XSchoolNameController,
                        decoration: InputDecoration(
                            hintText: "e.g, Kendriya Vidyalay",
                            labelText: "School Name:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        enabled: true,
                        controller: XBoardNameController,
                        decoration: InputDecoration(
                            hintText: "e.g, CBSE",
                            labelText: "Board Name:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        enabled: true,
                        controller: XAddressController,
                        decoration: InputDecoration(
                            hintText: "e.g, Address of Secondary School",
                            labelText: "Address:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        enabled: true,
                        controller: XAggregateController,
                        decoration: InputDecoration(
                            hintText: "e.g, 92",
                            labelText: "Aggregate(%)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Class XII Details:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        enabled: true,
                        controller: XIISchoolNameController,
                        decoration: InputDecoration(
                            hintText: "e.g, Kendriya Vidyalay",
                            labelText: "School Name:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        enabled: true,
                        controller: XIIBoardNameController,
                        decoration: InputDecoration(
                            hintText: "e.g, CBSE",
                            labelText: "Board Name:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        enabled: true,
                        controller: XIIAddressController,
                        decoration: InputDecoration(
                            hintText: "e.g, Address of Higher Secondary School",
                            labelText: "Address:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        enabled: true,
                        controller: XIIAggregateController,
                        decoration: InputDecoration(
                            hintText: "e.g, 92",
                            labelText: "Aggregate(%)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),



                      Text(
                        "-" * 47,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "College Details:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      TextFormField(
                        enabled: true,
                        controller: CollegeNameController,
                        decoration: InputDecoration(
                            hintText: "e.g, RCCIIT",
                            labelText: "College Name:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        enabled: true,
                        controller: UniversityNameController,
                        decoration: InputDecoration(
                            hintText: "e.g, MAKAUT",
                            labelText: "University Name:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        enabled: true,
                        controller: CollegeAddressController,
                        decoration: InputDecoration(
                            hintText: "e.g, Address of College",
                            labelText: "Address:",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),
                      SizedBox(height: 10.0,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        enabled: true,
                        controller: CGPAController,
                        decoration: InputDecoration(
                            hintText: "e.g, 9",
                            labelText: "CGPA(%)",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) return "Required";
                        },
                      ),

                      SizedBox(height: 10.0,),
                      Row(
                        children: <Widget>[
                          Expanded(child:
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            child:ElevatedButton(onPressed: () async{
                              var pussy = Cat( id: 1,
                                  xschoolname: XSchoolNameController.text,
                                  xboardname: XBoardNameController.text,
                                  xaddress: XAddressController.text,
                                  xaggregate: XAggregateController.text,
                                  xiischoolname: XIISchoolNameController.text,
                                  xiiboardname: XIIBoardNameController.text,
                                  xiiaddress: XIIAddressController.text,
                                  xiiaggregate: XIIAggregateController.text,
                                  collegename: CollegeNameController.text,
                                  univname: UniversityNameController.text,
                                  coladdress: CollegeAddressController.text,
                                  cgpa: CGPAController.text
                              );

                              await insertCat(pussy);
                              Database db = await init1();
                              List list = await db.query('cats');
                              array.add(list[0]);
                              print(array[1].toString());
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Screen3()));
                            },
                                child: Text("Save & Next", style: TextStyle(color: Colors.white, shadows: [Shadow(
                                  offset: Offset(2.5, -2.5), //position of shadow
                                  blurRadius: 2.0, //blur intensity of shadow
                                  color: Colors.black.withOpacity(0.5), //color of shadow with opacity
                                ),]),),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)
                                    )
                                )),
                          )),


                          Expanded(child:
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            child: ElevatedButton(onPressed: () {
                              setState(() {
                                XSchoolNameController.text = XBoardNameController.text =
                                    XAddressController.text = XAggregateController.text = XIISchoolNameController.text =
                                    XIIBoardNameController.text = XIIAddressController.text = XIIAggregateController.text =
                                    CollegeNameController.text = UniversityNameController.text = CollegeAddressController.text =
                                    CGPAController.text = '';
                              });
                            },
                                child: Text("Reset", style: TextStyle(color: Colors.white, shadows: [Shadow(
                                  offset: Offset(2.5, -2.5), //position of shadow
                                  blurRadius: 2.0, //blur intensity of shadow
                                  color: Colors.black.withOpacity(0.5), //color of shadow with opacity
                                ),]),),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0)
                                    )
                                )),
                          )),

                        ],
                      ),
                      SizedBox(height: 300.0,)
                    ],
                  )),
            )),
      ),
    );
  }

}