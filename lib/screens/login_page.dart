import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:indianyoutubefirebase/screens/register_page.dart';
import 'package:indianyoutubefirebase/utils/authentication_client.dart';
import 'package:indianyoutubefirebase/utils/validator.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _emailFocusNode = FocusNode();

  final _passwordFocusNode = FocusNode();

  final _authClient = AuthenticationClient();

  bool _isProgress = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _emailFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: const Center(
        //       child: Text(
        //     'The  LOOK',
        //     //style: TextStyle(color: Colors.white60),
        //   )),
        // ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1481068164146-e8beb686f4d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGhhaXIlMjBzYWxvb258ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color(0xffecc5a5),
                    child: TextFormField(
                      controller: _emailController,
                      focusNode: _emailFocusNode,
                      validator: Validator.email,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        //border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(color: Colors.white),
                        label: Text(
                          'Email',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color(0xffecc5a5),
                    child: TextFormField(
                      controller: _passwordController,
                      focusNode: _passwordFocusNode,
                      validator: Validator.password,
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        //border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                        label: Text('Password'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  _isProgress
                      ? const CircularProgressIndicator()
                      : SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.pink,
                                  //fixedSize: const Size(100, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    _isProgress = true;
                                  });
                                  final User? user =
                                      await _authClient.loginUser(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  );
                                  setState(() {
                                    _isProgress = false;
                                  });

                                  if (user != null) {
                                    Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage(
                                                title: 'RECESS',
                                                user: user,
                                              )),
                                      (route) => false,
                                    );
                                  } //const MyHomePage(title: 'RECESS')
                                }
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(fontSize: 22.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Don\'t have an account? Click here to register',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
