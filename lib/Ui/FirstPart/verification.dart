import 'package:flutter/material.dart';
import 'package:triple_n/Global/global.dart';
import 'createpassword.dart';
import 'package:triple_n/Ui/home.dart';

class verification extends StatefulWidget {
  @override
  _verificationState createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: app_color,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Card(
                          color: Colors.white,
                          shadowColor: shade,
                          elevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          "Verification",
                                          style: TextStyle(
                                            color: app_color,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.0,
                                          ),
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Expanded(
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.2,
                                    height: 35,
                                    padding: EdgeInsets.only(
                                        top: 4, left: 16, right: 16, bottom: 4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 5)
                                        ]),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          icon: Icon(
                                            Icons.code,
                                            color: app_color,
                                          ),
                                          hintText:
                                              'Enter your Verification code from mail',
                                          hintStyle: TextStyle(
                                            fontSize: 16.0,
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                createpassword()),
                                      );
                                    },
                                    child: Container(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [shade, app_color],
                                          ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          'Verify'.toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ])))))),
    );
  }
}
