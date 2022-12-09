import 'dart:ui';


import 'package:basic_form/Screen3.dart';
import 'package:basic_form/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'Screen2.dart';

var array = [];

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen1State();
  }
}

class Screen1State extends State<Screen1> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController middlenameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController phone_noController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController town_or_villageController = TextEditingController();
  TextEditingController poController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController incomeController = TextEditingController();
  TextEditingController sexController = TextEditingController();
  TextEditingController ageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.mirror,
                colors:
                [
                  Colors.lightGreenAccent,
                  Colors.cyanAccent,
                  Colors.cyanAccent,
                  Colors.lightGreenAccent
                ])
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text("Personal Data", textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, shadows: [Shadow(
                offset: Offset(2.5, -2.5), //position of shadow
                blurRadius: 2.0, //blur intensity of shadow
                color: Colors.black.withOpacity(
                    0.5), //color of shadow with opacity
              ),
              ], fontWeight: FontWeight.bold),),
            bottomOpacity: 0.3,
            scrolledUnderElevation: 40.0,
            elevation: 20,
            shape: StadiumBorder(side: BorderSide.none),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.cyanAccent,

            leading: Icon(Icons.person, color: Colors.white, shadows: [Shadow(
              offset: Offset(2.5, -2.5), //position of shadow
              blurRadius: 2.0, //blur intensity of shadow
              color: Colors.blue.withOpacity(
                  0.9), //color of shadow with opacity
            ),
            ],),),
          body: Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Form(
                    key: _formKey,
                    child: ListView(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
                          .onDrag,
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
                          "Candidate Name:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: firstnameController,
                          decoration: InputDecoration(
                              hintText: "e.g, Gourav",
                              labelText: "FirstName",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: middlenameController,
                          decoration: InputDecoration(
                              hintText: "e.g, Kumar",
                              labelText: "Middlename",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: lastnameController,
                          decoration: InputDecoration(
                              hintText: "e.g, Kanjilal",
                              labelText: "Lastname",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
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
                          "Contact Details:",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          enabled: true,
                          controller: phone_noController,
                          decoration: InputDecoration(
                              hintText: "e.g, +9178451*****",
                              labelText: "Phone No.",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: "e.g, xyz@example.com",
                              labelText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: addressController,
                          decoration: InputDecoration(
                              hintText: "Addrerss you are currently living at",
                              labelText: "Current Address",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: town_or_villageController,
                          decoration: InputDecoration(
                              hintText: "Your Town or City or Village",
                              labelText: "Town/City/Village",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: districtController,
                          decoration: InputDecoration(
                              hintText: "e.g. North 24 Parganas",
                              labelText: "District",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: poController,
                          decoration: InputDecoration(
                              hintText: "Nona ChandanPukur",
                              labelText: "P/O",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: stateController,
                          decoration: InputDecoration(
                              hintText: "e.g. West Bengal",
                              labelText: "State",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: countryController,
                          decoration: InputDecoration(
                              hintText: "e.g., India",
                              labelText: "Country",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: pincodeController,
                          decoration: InputDecoration(
                              hintText: "e.g., 700122",
                              labelText: "Pincode",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
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
                          "Others:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: dobController,
                          decoration: InputDecoration(
                              hintText: "e.g.,06/09/2003",
                              labelText: "Date of Birth(DD-MM-YYYY)",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: ageController,
                          decoration: InputDecoration(
                              hintText: "e.g., 13",
                              labelText: "Age",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),

                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: designationController,
                          decoration: InputDecoration(
                              hintText: "e.g., Doctor",
                              labelText: "Designation",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: incomeController,
                          decoration: InputDecoration(
                              hintText: "e.g., 8",
                              labelText: "Annual Income(LPA)(Optional)",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return "Required";
                          },
                          controller: sexController,
                          decoration: InputDecoration(
                              hintText: "e.g., Male(Optional)",
                              labelText: "Sex",

                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          enabled: true,
                          controller: religionController,
                          decoration: InputDecoration(
                              hintText: "e.g., Hindu",
                              labelText: "Religion(Optional)",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0))),

                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          children: <Widget>[
                            Expanded(child:
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              child: ElevatedButton(

                                  onPressed: () async {
                                    var fido = Dog(id: 1,
                                        name: firstnameController.text + ' ' +
                                            middlenameController.text + ' ' +
                                            lastnameController.text,
                                        phone_no: phone_noController.text,
                                        email: emailController.text,
                                        curr_add: addressController.text,
                                        town: town_or_villageController.text,
                                        dist: districtController.text,
                                        po: poController.text,
                                        state: stateController.text,
                                        country: countryController.text,
                                        pincode: pincodeController.text,
                                        dob: dobController.text,
                                        age: ageController.text,
                                        desg: designationController.text,
                                        income: incomeController.text,
                                        sex: sexController.text,
                                        religion: religionController.text);

                                    await insertDog(fido);
                                    Database db = await init();
                                    List list = await db.query('dogs');
                                    array.add(list[0]);
                                    print(array[0]);
                                    await Navigator.push(
                                        context, MaterialPageRoute(builder:
                                        (BuildContext context) => Screen2()));
                                  },
                                  child: Text("Save & Next", style: TextStyle(
                                      color: Colors.white, shadows: [Shadow(
                                    offset: Offset(2.5, -2.5),
                                    //position of shadow
                                    blurRadius: 2.0,
                                    //blur intensity of shadow
                                    color: Colors.black.withOpacity(
                                        0.5), //color of shadow with opacity
                                  ),
                                  ]),),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              20.0)
                                      )
                                  )),
                            )),


                            Expanded(child:
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.0),
                                child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        firstnameController.text =
                                            lastnameController.text
                                        = middlenameController.text =
                                            phone_noController.text
                                        = emailController.text =
                                            addressController.text
                                        = town_or_villageController.text =
                                            poController.text
                                        = districtController.text =
                                            countryController.text
                                        = stateController.text =
                                            pincodeController.text =
                                            religionController.text =
                                            dobController.text =
                                            designationController.text
                                        = incomeController.text =
                                            sexController.text =
                                            ageController.text = '';
                                      });
                                    },
                                    child: Text("Reset", style: TextStyle(
                                        color: Colors.white, shadows: [Shadow(
                                      offset: Offset(2.5, -2.5),
                                      //position of shadow
                                      blurRadius: 2.0,
                                      //blur intensity of shadow
                                      color: Colors.black.withOpacity(
                                          0.5), //color of shadow with opacity
                                    ),
                                    ]),),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                20.0)
                                        )
                                    )
                                )),
                            ),

                          ],
                        ),
                        SizedBox(height: 300.0)
                      ],
                    )),
              )),
        )
    );
  }
}
