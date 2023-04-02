import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_banking_app/components/my_app_template.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  String validEmail = "raju@gmail.com";
  String validPassword = "raju123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text("Mahalaxmi Cheat Fund",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 40),
              SvgPicture.asset(
                'assets/images/welcome.svg',
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: validEmail,
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _email = value!;
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              hintText: validPassword
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _password = value!;
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            if(_email == validEmail && _password == validPassword){
                              Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false);
                            }else{
                              Fluttertoast.showToast(
                                  msg: "Invalid Email/Password",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.black,
                                  textColor: Colors.white,
                                  fontSize: 16.0
                              );
                            }
                          }
                        },
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Don't have account? create new"),
                      OutlinedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text("Signup")
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
    );
  }
}