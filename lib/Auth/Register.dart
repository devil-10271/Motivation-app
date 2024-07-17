import 'package:flutter/material.dart';
import 'package:mwm/Auth/Register.dart';
import 'package:mwm/Home/home_page.dart';
import 'package:mwm/Auth/forgot_password.dart';
import 'package:mwm/Guest/1_guest_page.dart';
// this code is develop by ayush

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> with SingleTickerProviderStateMixin {
  bool passwordVisible=false;

  dynamic conf_pass;

  RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$');
  // RegExp _pass = RegExp(r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{7,32}$');

  final GlobalKey<FormState> _formK = GlobalKey<FormState>();
  final GlobalKey<FormState> _Regi = GlobalKey<FormState>();

  bool _accepted = false;

  late TabController _tabController;

  int _selectedIndex = 0;

  List<String> tabtitle=[
    'Sign In for Empowering Your Health Journey',
    'Register for Empowering Your Health Journey',
  ];

  @override
  void initState() {
    super.initState();
    passwordVisible=true;
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener((){
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(112, 43, 146, 1),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                //padding: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Train,_eat,_sleep,_poster_for_gym_with_fitness_icons,_vector-ai 1.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: _mediaQuery.size.height * 0.0928),
                      width: _mediaQuery.size.width * 0.2967,
                      height: _mediaQuery.size.height * 0.0863,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/MWM Logo - Colour-Hi-Res 2.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _mediaQuery.size.height * 0.0215,
                    ),
                    Container(
                      margin:
                      EdgeInsets.only(left: _mediaQuery.size.width / 104),
                      width: _mediaQuery.size.width * wt(220),
                      // height: _mediaQuery.size.height * ht(50),
                      child:
                      Text(
                        tabtitle[_tabController.index],
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _mediaQuery.size.height * ht(49),
                    ),
                    Container(
                      width: _mediaQuery.size.width,
                      height: 634,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(45),
                            topLeft: Radius.circular(45)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: _mediaQuery.size.height * ht(25),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(

                              width: MediaQuery.of(context).size.width,
                              // height: _mediaQuery.size.height * ht(50),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(234, 234, 234, 1),
                                borderRadius:
                                BorderRadius.all(Radius.circular(90)),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: TabBar(
                                      controller: _tabController,
                                      labelColor: Colors.black,
                                      unselectedLabelColor: Color.fromRGBO(74, 74, 74, 1),
                                      // indicatorColor: Colors.black,
                                      // indicatorWeight: 2,
                                      labelStyle:TextStyle(fontWeight: FontWeight.w500),
                                      dividerHeight: 0,

                                      indicator: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius: BorderRadius.circular(90),

                                      ),
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      tabs: [
                                        Tab(
                                          text: 'Sign In ',
                                        ),
                                        Tab(
                                          text: 'Register',
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                // Content for Sign in tab
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: _mediaQuery.size.height * ht(30),
                                        bottom: _mediaQuery.size.height * ht(40),
                                        left: _mediaQuery.size.width * wt(20),
                                        right: _mediaQuery.size.width * wt(20)),
                                    child: Form(
                                      key: _formK,
                                      child: Column(
                                        //mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          TextFormField(
                                            //style: TextStyle(color: Colors.green),
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              label: Text(
                                                  'Enter your Email Address*'),
                                            ),

                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please Enter a Email Id';
                                              }
                                              if (!emailRegExp.hasMatch(value)) {
                                                return 'Please Enter valid Email Address';
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(15),
                                          ),
                                          TextFormField(
                                            obscureText: passwordVisible,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              label: Text('Enter Password*'),
                                              suffixIcon: IconButton(
                                                icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                                                onPressed: () {
                                                  setState(
                                                        () {
                                                      passwordVisible = !passwordVisible;
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please Enter a Password';
                                              }
                                              if (value.length < 7) {
                                                return 'Password must contain 7 letters';
                                              } else {
                                                return null;
                                              }
                                            },
                                            keyboardType: TextInputType.visiblePassword,
                                            textInputAction: TextInputAction.done,
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(12),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: _mediaQuery.size.width *
                                                    wt(291)),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            forgot()));
                                              },
                                              child: Text(
                                                'Forgot Password?',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        102, 102, 102, 1),
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: _mediaQuery.size.height *
                                                    ht(40)),
                                            child: Container(
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  if (_formK.currentState!
                                                      .validate()) {

                                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage(),));


                                                    return;
                                                    // Navigator.push(
                                                    //     context,
                                                    //     MaterialPageRoute(
                                                    //         builder: (context) =>
                                                    //             HomePage()));
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
                                                    padding: EdgeInsets.all(17),
                                                    child: Text(
                                                      'SIGN IN',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(30),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal:_mediaQuery.size.width * wt(40)),
                                            child: Row(
                                              children: [
                                                // SizedBox(
                                                //   width: _mediaQuery.size.width *
                                                //       wt(62),
                                                // ),
                                                Container(
                                                  margin: EdgeInsets.all(10.0),
                                                  color:
                                                  Color.fromRGBO(74, 74, 74, 1),
                                                  width: 60.0,
                                                  height: 0.4,
                                                ),
                                                Text(
                                                  'Or sign in with',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        74, 74, 74, 1),
                                                    fontSize: 14,
                                                  ),

                                                ),
                                                Container(
                                                  margin: EdgeInsets.all(10.0),
                                                  color:
                                                  Color.fromRGBO(74, 74, 74, 1),
                                                  width: 60.0,
                                                  height: 0.4,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(30),
                                          ),
                                          Row(
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
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                90),
                                                            side: BorderSide(
                                                                color:
                                                                Color.fromRGBO(
                                                                    234,
                                                                    234,
                                                                    234,
                                                                    1))))),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                      _mediaQuery.size.width *
                                                          wt(19),
                                                      vertical: _mediaQuery
                                                          .size.height *
                                                          ht(15)),
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/icon/facebook.png')),
                                                ),
                                              ),
                                              SizedBox(
                                                width: _mediaQuery.size.width *
                                                    wt(8),
                                              ),
                                              ElevatedButton(
                                                onPressed: null,
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                                  shape:
                                                  MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          90),
                                                      side: BorderSide(
                                                        color: Color.fromRGBO(
                                                            234, 234, 234, 1),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                      _mediaQuery.size.width *
                                                          wt(19),
                                                      vertical: _mediaQuery
                                                          .size.height *
                                                          ht(15)),
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/icon/google.png')),
                                                ),
                                              ),
                                              SizedBox(
                                                width: _mediaQuery.size.width *
                                                    wt(8),
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
                                                            borderRadius:
                                                            BorderRadius.circular(
                                                                90),
                                                            side: BorderSide(
                                                                color:
                                                                Color.fromRGBO(
                                                                    234,
                                                                    234,
                                                                    234,
                                                                    1))))),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                      _mediaQuery.size.width *
                                                          wt(19),
                                                      vertical: _mediaQuery
                                                          .size.height *
                                                          ht(15)),
                                                  child: Image(
                                                      image: AssetImage(
                                                          'assets/icon/apple.png')),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical:
                                                _mediaQuery.size.height *
                                                    ht(15)),
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            GuestPage()));
                                              },
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                                  shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                          side: BorderSide(
                                                              color:
                                                              Color.fromRGBO(
                                                                  234,
                                                                  234,
                                                                  234,
                                                                  1))))),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: _mediaQuery.size.width *
                                                        wt(145),
                                                    top: _mediaQuery.size.height *
                                                        ht(7),
                                                    bottom:
                                                    _mediaQuery.size.height *
                                                        ht(7)
                                                  // vertical:
                                                  // _mediaQuery.size.height *
                                                  //     ht(15)
                                                ),
                                                child: Row(
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            'assets/icon/guest.png')),
                                                    SizedBox(
                                                      width:
                                                      _mediaQuery.size.width *
                                                          wt(10),
                                                    ),
                                                    Text(
                                                      'Guest',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
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
                                  ),
                                ),












                                // Content for Register tab
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: _mediaQuery.size.height * ht(30),
                                        bottom: _mediaQuery.size.height * ht(40),
                                        left: _mediaQuery.size.width * wt(20),
                                        right: _mediaQuery.size.width * wt(20)),
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
                                              label: Text('Enter First Name*',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),),

                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Enter the First Name';
                                              } else {
                                                return null;

                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(15),
                                          ),
                                          TextFormField(
                                            //style: TextStyle(color: Colors.green),
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              label: Text('Enter Last Name*',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Enter the Last Name';
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(15),
                                          ),
                                          TextFormField(
                                            //style: TextStyle(color: Colors.green),
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              label: Text('Enter Email*',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),),
                                            ),
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return 'Enter the Email Id';
                                              }
                                              if(!emailRegExp.hasMatch(value)){
                                                return 'Please Enter Valid Email Id';
                                              }

                                              else{
                                                return null;
                                              }

                                            },
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(15),
                                          ),
                                          TextFormField(
                                            obscureText: passwordVisible,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              label: Text('Enter Password*'),
                                              suffixIcon: IconButton(
                                                icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                                                onPressed: () {
                                                  setState(
                                                        () {
                                                      passwordVisible = !passwordVisible;
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please Enter a Password';
                                              }
                                              if (value.length < 7) {
                                                return 'Password must contain 7 letters';
                                              } else {
                                                return null;
                                              }
                                            },
                                            keyboardType: TextInputType.visiblePassword,
                                            textInputAction: TextInputAction.done,
                                          ),
                                          SizedBox(
                                            height:
                                            _mediaQuery.size.height * ht(15),
                                          ),
                                          TextFormField(
                                            //style: TextStyle(color: Colors.green),
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              label: Text('Confirm Password*',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),),
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
                                                side: BorderSide(
                                                    color: Colors.black),
                                                activeColor:
                                                Color.fromRGBO(56, 165, 5, 1),
                                              ),
                                              Text(
                                                'I accept the Terms and Conditions',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,

                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                              height: _mediaQuery.size.height *
                                                  ht(40)),
                                          Container(
                                            child: ElevatedButton(
                                              onPressed: () {
                                                if(_Regi.currentState!.validate() && _accepted == true){
                                                  print(_accepted);
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Register()));

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
                                                  padding:
                                                  const EdgeInsets.all(17),
                                                  child: Text(
                                                    'REGISTER ACCOUNT',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

double ht(int a) {
  return a / 926;
}

double wt(int a) {
  return a / 428;
}
