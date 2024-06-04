import 'package:flutter/material.dart';
import 'package:mshope/firebase_authservices/firebase_Service.dart';
import 'package:mshope/screens/detail1.dart';
import 'package:mshope/screens/register.dart';

import 'forget_pass.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = false;
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final authservice =Firebase();
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.brown[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 4.0,
            height: MediaQuery.of(context).size.height - 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  '   Welcome  ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),

                const SizedBox(
                  height: 20,
                ),
                const Text(
                  '    Hello there, login to continue ',
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        controller: _emailcontroller,
                        validator: (value) {
                          RegExp regex = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~)]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if (value!.isEmpty) {
                            return ('please enter your email');
                          } else {
                            if (!regex.hasMatch(value)) {
                              return 'please enter a valid email';
                            }
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _userPasswordController,
                        validator: (value) {
                          RegExp regex = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#/$*&~]).{8,}$');
                          if (value!.isEmpty) {
                            return 'please enter the password';
                          } else {
                            if (!regex.hasMatch(value)) {
                              return 'enter a valid password';
                            }
                          }
                          return null;
                        },
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black26,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment
                      .centerRight, // Aligns the child to the right of the container
                  padding: const EdgeInsets.all(
                      16.0), // Adds some padding around the text
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Forget_pass(),
                          ));
                    },
                    child: const Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 4.0,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          String email = _emailcontroller.text;
                          String password = _userPasswordController.text;
                         Firebase().login(email: email, password: password, context: context);
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'or continue with social accont ',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 140,
                      ),
                      Image.asset(
                        'assess/images/google.png',
                        width: 50,
                        height: 50,
                      ),
                      const Text(
                        'Google',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      " Didn't have an account ?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ));
                      },
                      child: const Text(
                        '     Register',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

