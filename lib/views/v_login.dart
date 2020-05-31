
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:penamahasiswa/Utils/bareir_container.dart';
import 'package:penamahasiswa/Utils/screen_config.dart';
import 'package:penamahasiswa/views/v_index.dart';
import 'package:penamahasiswa/views/v_register.dart';
import 'package:pigment/pigment.dart';


class ViewLogin extends StatefulWidget {
  @override
  _ViewLoginState createState() => _ViewLoginState();
}

class _ViewLoginState extends State<ViewLogin> {

  bool visibelPassword = true;
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenConfig().init(context);
    return Scaffold(
      body: Hero(
          tag: 'login',
          child: Container(
            height: ScreenConfig.screenHeight,
            width: ScreenConfig.screenWidth,
//            color: Pigment.fromString("#ff9a00"),
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: -MediaQuery.of(context).size.height * .16,
                    right: -MediaQuery.of(context).size.width * .5,
                    child: BezierContainer()),
                Positioned(
                  left: 20,
                  right: 20,
                  top: -19,
                  bottom: 20,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/login.png",
                            width: ScreenConfig.blockHorizontal * 70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Pena Cerita",
                            textAlign: TextAlign.center,
                            style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenConfig.blockHorizontal * 5),
                          ),
                         
                          SizedBox(
                            height: 30,
                          ),
                          Card(
                            child: SizedBox(
                              height: 50,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Nama Pengguna",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            child: SizedBox(
                              height: 50,
                              child: TextField(
                                obscureText: visibelPassword,
                                textInputAction: TextInputAction.go,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                        icon: visibelPassword
                                            ? Icon(Icons.visibility_off)
                                            : Icon(Icons.visibility),
                                        onPressed: () {
                                          setState(() {
                                            visibelPassword = !visibelPassword;
                                          });
                                        }),
                                    labelText: "Kata Sandi",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: FlatButton(
                                onPressed: () {},
                                child: Text("Forget Password ?")),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>Index()
                                  ));
                                },
                                splashColor: Colors.white,
                                color: Pigment.fromString("#ff9a00"),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                      ScreenConfig.blockHorizontal * 4,
                                      letterSpacing: 3),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("You dont have account ?  ",style: TextStyle(fontWeight: FontWeight.bold),),
                        InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewRegister())),
                            child: Text("Register here..",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)),

                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
