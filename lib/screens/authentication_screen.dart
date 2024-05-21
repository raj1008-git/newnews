import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';
import 'package:flutter/widgets.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key, this.isLogin = true});
  final bool? isLogin;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    bool loginStatus = isLogin ?? true;
    bool isVisible;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                loginStatus ? "Login" : 'Create Account',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Divider()),
                  Text('     or'),
                  Expanded(
                    child: Divider(
                      indent: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.g_translate,
                    size: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.facebook,
                    size: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: loginStatus
                    ? Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Empty Field!";
                                }
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter Email',
                              ),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Password',
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      )
                    : Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Name cannot be empty";
                                }
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter Name',
                              ),
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email cannot be Empty";
                                }
                              },
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Enter Email',
                              ),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.remove_red_eye),
                                border: InputBorder.none,
                                labelText: 'Password',
                              ),
                            ),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Confirm Password',
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
              ),
              MaterialButton(
                onPressed: loginStatus
                    ? () {
                        if (formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // Create a themed AlertDialog for a more consistent look
                                return Theme(
                                  data: ThemeData
                                      .dark(), // Or use currentTheme if preferred
                                  child: AlertDialog(
                                    title: const Text('Logged in Successfully'),
                                    content: const Text(''),
                                    actions: [
                                      TextButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // Create a themed AlertDialog for a more consistent look
                                return Theme(
                                  data: ThemeData
                                      .dark(), // Or use currentTheme if preferred
                                  child: AlertDialog(
                                    title:
                                        const Text('Please Enter a Form Name'),
                                    content: const Text(
                                        'The form name cannot be empty.'),
                                    actions: [
                                      TextButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        }
                      }
                    : () {
                        if (formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // Create a themed AlertDialog for a more consistent look
                                return Theme(
                                  data: ThemeData
                                      .dark(), // Or use currentTheme if preferred
                                  child: AlertDialog(
                                    title: const Text('Logged in Successfully'),
                                    content: const Text(''),
                                    actions: [
                                      TextButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                // Create a themed AlertDialog for a more consistent look
                                return Theme(
                                  data: ThemeData
                                      .dark(), // Or use currentTheme if preferred
                                  child: AlertDialog(
                                    title: const Text('Please Enter a Fields'),
                                    content: const Text(
                                        'The form name cannot be empty.'),
                                    actions: [
                                      TextButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        }
                      },
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 100,
                  right: 100,
                  bottom: 20,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.red,
                child: Text(
                  loginStatus ? 'Login' : "Sign Up",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
