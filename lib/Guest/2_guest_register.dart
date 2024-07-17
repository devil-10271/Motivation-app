import 'package:flutter/material.dart';
import 'package:mwm/Auth/Register.dart';
import 'package:mwm/Home/home_page.dart';

import '../Auth/forgot_password.dart';

//this code is developed by Ayush

import 'package:flutter/material.dart';
import 'package:mwm/Auth/Register.dart';
import 'package:mwm/Home/home_page.dart';
import '../Auth/forgot_password.dart';

class GuestRegister extends StatefulWidget {
  const GuestRegister({super.key});

  @override
  State<GuestRegister> createState() => _GuestRegisterState();
}

class _GuestRegisterState extends State<GuestRegister> {
  dynamic conf_pass;

  RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$');
  // RegExp _pass = RegExp(r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{7,32}$');


  final GlobalKey<FormState> _formK=GlobalKey<FormState>();
  final GlobalKey<FormState> _Regi=GlobalKey<FormState>();

  bool _accepted = false;


  @override
  Widget build(BuildContext context) {
    var screen=MediaQuery.of(context);
    return SingleChildScrollView(

      child: Padding(
        padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),

        child: DefaultTabController(
          length: 2,
          child: SizedBox(
            // width: screen.size.width*wt(428),
            // height: screen.size.height*ht(526),
            width:428,
            height:526,
            child: Column(
              children: [
                SizedBox(
                  height: screen.size.height*ht(45),
                ),
                
                SafeArea(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: screen.size.height*ht(20)),
                    width: screen.size.width,
                    height: screen.size.height*ht(50),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 234, 234, 1),
                      borderRadius:
                      BorderRadius.all(Radius.circular(100)),
                    ),
                    child: TabBar(
                      //isScrollable: true,
                      tabAlignment: TabAlignment.fill,
                      indicatorColor: Colors.transparent,
                      dividerHeight: 0,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      unselectedLabelColor:
                      Color.fromRGBO(74, 74, 74, 1),
                      labelColor: Color.fromRGBO(0, 0, 0, 1),
                      indicatorPadding:
                      EdgeInsets.symmetric(vertical: 1),
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      tabs: [
                        Center(child: Tab(text: 'Sign in')),
                        Center(child: Tab(text: 'Register')),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [

                      // Content for Sign in tab
                      SingleChildScrollView(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(
                              vertical: screen.size.height*ht(20), horizontal: screen.size.width*wt(20)),
                          child: Form(
                            key: _formK,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextFormField(
                                  //style: TextStyle(color: Colors.green),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label:
                                    Text('Enter your Email Address*'),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter a Email Id';
                                    }
                                    if(!emailRegExp.hasMatch(value)){
                                      return 'Please Enter valid Email Address';
                                    }


                                    else{

                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: screen.size.height*ht(15),
                                ),
                                TextFormField(
                                  //style: TextStyle(color: Colors.green),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Enter Password*'),
                                    suffixIcon: Image(
                                      image: AssetImage(
                                          'assets/icon/eye 1.png'),
                                    ),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Please Enter a Password';

                                    }
                                    if(value.length<7){
                                      return 'Password must contain 7 letters';
                                    }
                                    else{

                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: screen.size.height*ht(12),
                                ),
                                Padding(
                                  padding:
                                   EdgeInsets.only(left: screen.size.height*ht(200)),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot())
                                      );
                                    },
                                    child: RichText(
                                      textAlign: TextAlign.right,
                                      text: TextSpan(
                                        text: 'Forgot Password?',
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                              102, 102, 102, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(
                                      horizontal: screen.size.height*ht(10), vertical: screen.size.height*ht(25)),
                                  child: Container(
                                    child: ElevatedButton(
                                      onPressed: (){
                                        if (_formK.currentState!.validate()) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        }
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all(
                                            Color.fromRGBO(
                                                112, 43, 146, 1)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Sign in',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      color:
                                      Color.fromRGBO(74, 74, 74, 1),
                                      width: screen.size.width*wt(60),
                                      height: screen.size.height*ht(2),
                                    ),
                                    Text(
                                      'Or sign in with',
                                      style: TextStyle(
                                        color:
                                        Color.fromRGBO(74, 74, 74, 1),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10.0),
                                      color:
                                      Color.fromRGBO(74, 74, 74, 1),
                                      width: screen.size.width*wt(60),
                                      height: screen.size.height*ht(2),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: screen.size.width*wt(30),
                                       vertical: screen.size.height*ht(10)),
                                  child: Row(
                                    children: [
                                      ElevatedButton(
                                        onPressed: null,
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(90),
                                                    side: BorderSide(
                                                        color: Color.fromRGBO(
                                                            234, 234, 234, 1))))
                                        ),
                                        child: Padding(
                                          padding:
                                        EdgeInsets.symmetric(
                                              horizontal: screen.size.width*wt(8),
                                              vertical: screen.size.height*ht(15)),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/icon/facebook.png')),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screen.size.width*wt(10),
                                      ),
                                      ElevatedButton(
                                        onPressed: null,
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(90),
                                                    side: BorderSide(
                                                        color: Color.fromRGBO(
                                                            234, 234, 234, 1))))
                                        ),
                                        child: Padding(
                                          padding:
                                          EdgeInsets.symmetric(
                                              horizontal: screen.size.width*wt(8),
                                              vertical: screen.size.height*ht(15)),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/icon/google.png')),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screen.size.width*wt(10),
                                      ),
                                      ElevatedButton(
                                        onPressed: null,
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(90),
                                                    side: BorderSide(
                                                        color: Color.fromRGBO(
                                                            234, 234, 234, 1))))
                                        ),
                                        child: Padding(
                                          padding:
                                       EdgeInsets.symmetric(
                                              horizontal: screen.size.width*wt(8),
                                              vertical: screen.size.height*ht(15)),
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/icon/apple.png')),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),






                      // Content for Register tab
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: screen.size.height * ht(30),
                              bottom: screen.size.height * ht(40),
                              left: screen.size.width * wt(20),
                              right: screen.size.width * wt(20)),
                          child: Form(
                            key: _Regi,
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                  //style: TextStyle(color: Colors.green),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Enter First Name*'),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter the First Name';
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(
                                  height:
                                  screen.size.height * ht(15),
                                ),
                                TextFormField(
                                  //style: TextStyle(color: Colors.green),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Enter Last Name*'),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter the Last Name';
                                    }

                                    else{
                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(
                                  height:
                                  screen.size.height * ht(15),
                                ),
                                TextFormField(
                                  //style: TextStyle(color: Colors.green),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Enter Email*'),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter the Email Id';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                SizedBox(
                                  height:
                                  screen.size.height * ht(15),
                                ),
                                TextFormField(
                                  //style: TextStyle(color: Colors.green),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Enter Password*'),
                                    suffixIcon: Image(
                                      image: AssetImage(
                                          'assets/icon/eye-off 1.png'),
                                    ),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter the Email Id';
                                    }

                                    else{
                                      return null;
                                    }

                                  },
                                ),
                                SizedBox(
                                  height:
                                  screen.size.height * ht(15),
                                ),
                                TextFormField(
                                  //style: TextStyle(color: Colors.green),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    label: Text('Confirm Password*'),
                                    suffixIcon: Image(
                                      image: AssetImage(
                                          'assets/icon/green_tick.png'),
                                    ),
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty){
                                      return 'Enter the Password';
                                    }
                                    if(value.length<7){
                                      return 'Password must contain 7 letters';
                                    }
                                    else{
                                      return null;
                                    }
                                    conf_pass=value;
                                  },
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _accepted,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _accepted = newValue!;
                                        });
                                      },
                                      side:
                                      BorderSide(color: Colors.black),
                                      activeColor:
                                      Color.fromRGBO(56, 165, 5, 1),
                                    ),
                                    Text(
                                      'I accept the Terms and Conditions',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height:
                                    screen.size.height * ht(40)),
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_Regi.currentState!
                                          .validate() &&
                                          _accepted == true) {
                                        showModalBottomSheet<void>(
                                          isScrollControlled: true,
                                          context: context,
                                          builder: (context) => GuestRegister(),
                                        );
                                      }
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(
                                          Color.fromRGBO(
                                              112, 43, 146, 1)),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(17),
                                        child: Text(
                                          'REGISTER ACCOUNT',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
double ht(int a){
  return a/926;
}
double wt(int a){
  return a/428;
}