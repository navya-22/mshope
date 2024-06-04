import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Forget_pass extends StatefulWidget {
  const Forget_pass({super.key});

  @override
  State<Forget_pass> createState() => _Forget_passState();
}

class _Forget_passState extends State<Forget_pass> {
  bool value = false;
  bool _passwordVisible = false;
  final TextEditingController _namecontroller1=TextEditingController();
  final TextEditingController _namecontroller2 =TextEditingController();
  final TextEditingController _emailcontroller =TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
  final TextEditingController _userPasswordController1 =TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }  @override

  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.grey[50],
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
                const SizedBox(height: 10,),
                Form(
                  key: _formKey,
                  child:Column(
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
                      SizedBox(height: 10,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        controller: _emailcontroller,
                        validator: (value) {
                          RegExp regex= RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~)]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if( value!.isEmpty){
                            return ('please enter your email');
                          }else{
                            if(!regex.hasMatch(value)){
                              return'please enter a valid email';
                            }
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _userPasswordController,
                        validator: (value) {
                          RegExp regex=
                          RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&~]).{8,}$');
                          if(value!.isEmpty){
                            return 'please enter the password';
                          }else{
                            if(!regex.hasMatch(value)){
                              return 'enter a valid password';
                            }
                          }
                          return null ;
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
                                _passwordVisible =!_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: _userPasswordController1,
                        validator: (value) {
                          RegExp regex=
                          RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&~]).{8,}$');
                          if(value!.isEmpty){
                            return 'please enter the password';
                          }else{
                            if(!regex.hasMatch(value)){
                              return 'enter a valid password';
                            }
                          }
                          return null ;
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
                                _passwordVisible =!_passwordVisible;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width-4.0,
                  height: 80,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: this.value,
                            onChanged: (bool? value ) {
                              setState(() {
                                this.value = value!;
                              });
                            },
                          ),
                          const Text(
                            'I agree to the  ',),

                          const Text(
                            'Terms  &  Conditions  &  Privacy Policy   ',
                            style: TextStyle(
                              color: Colors.blue,
                            ),),
                        ],
                      ),
                      const Align(alignment: AlignmentDirectional.centerStart,
                          child: Text('  set out by this site.',textAlign: TextAlign.start,)),
                    ],
                  ),

                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width-4.0,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          //Navigator.push(context,MaterialPageRoute(builder: (context) => ,));
                        }
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white,fontSize: 20),
                      )),
                ),
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  //padding:
                  //const EdgeInsets.all(8.0),
                  child: const Text(
                    'or continue with social accont ',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      const SizedBox(width: 140,),
                      Image.asset('assess/images/google.png',width: 50,height: 50,),
                      const Text('Google',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
                const SizedBox(height: 10,),

                Row(
                  children: [
                    const SizedBox(width: 80,),
                    const Text(" Already have an account ?",style: TextStyle(fontSize: 15),),
                    TextButton(
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(),)); },
                      child: const Text(
                        ' Login',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],),
    );
  }
}


