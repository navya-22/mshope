import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mshope/firebase_authservices/firebase_Service.dart';
import 'package:mshope/screens/start%20screen.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isChecked= false;
  bool value = false;
  bool _passwordVisible = false;
  final TextEditingController _namecontroller1 = TextEditingController();
  final TextEditingController _namecontroller2 = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userPasswordController1 =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final authService = Firebase();
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown[100],
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '  Register Account ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '    Hello there, register to continue ',
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 10,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _namecontroller1,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Please Enter First  Name ';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'First Name'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _namecontroller2,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' Please Enter Last Name ';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            labelText: 'Last Name'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                        height: 10,
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
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _userPasswordController1,
                        validator: (value) {
                          RegExp regex = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#/$*&~]).{8,}$');
                          if (value!.isEmpty) {
                            return 'please enter the password';
                          } else {
                            if (value != _userPasswordController.text) {
                              return 'Not Match';
                            }
                          }
                          return null;
                        },
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          labelText: 'Conform password',
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
                FormField(
                    autovalidateMode: AutovalidateMode.always,
                    initialValue: false,
                    validator: (value) {
                      if (value != true) {
                        return '';
                      }
                      return null;
                    },
                    builder: (FormFieldState<bool> state) {
                      return SizedBox(
                          width: 500,
                          child: CheckboxListTile(
                              title: Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'I agree to the',
                                        ),
                                        const Text(
                                          'Terms & Conditions ',
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: Row(
                                          children: [
                                            Text('& Privacy Policy',style: TextStyle(
                                              color: Colors.blue,
                                            ),),
                                            Text(
                                              '  set out by this site.',
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              subtitle: state.hasError
                                  ? Text(
                                      state.errorText!,
                                      style: TextStyle(color: Colors.red),
                                    )
                                  : null,
                              value: state.value,
                              onChanged: (value) {
                                isChecked =value ?? false;
                                state.didChange(value);
                              }));
                    })
              ],
            ),
          ),
      SizedBox(
        height: 10,
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
              String fname = _namecontroller1.text;
              String lname = _namecontroller2.text;
              String email = _emailcontroller.text;
              String password = _userPasswordController.text;
              String conform = _userPasswordController1.text;
              if (_formKey.currentState!.validate()) {

                if (isChecked ==true){
                Firebase().register(
                    firstname: fname,
                    lastname: lname,
                    email: email,
                    password: password,
                    conformpassword: conform,
                    context: context);
              }else{
               const  snackdemo= SnackBar(
                      content: Text('you need to accept terms!'),
                    elevation: 10,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(10),
                  );
               ScaffoldMessenger.of(context).showSnackBar(snackdemo);

                }
            }},
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        alignment: Alignment.center,
        //padding:
        //const EdgeInsets.all(8.0),
        child: const Text(
          'or continue with social accont ',
          style: TextStyle(color: Colors.black54),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        height: 50,
        decoration: const BoxDecoration(color: Colors.white),
        alignment: Alignment.center,
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
        height: 10,
      ),

      Row(
        children: [
          const SizedBox(
            width: 80,
          ),
          const Text(
            " Already have an account ?",
            style: TextStyle(fontSize: 15),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
            },
            child: const Text(
              ' Login',
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
        ],
      ),
    ],
      ),
    );
  }
}
