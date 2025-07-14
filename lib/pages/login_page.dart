import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/config/app_routs.dart';
import 'package:flutter_application_1/config/app_strings.dart';
import 'package:flutter_application_1/styles/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 68,
                // ),
                Spacer(),
                Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),

                Text(AppStrings.loginToContinue,
                    style: TextStyle(color: Colors.white)),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email ',
                    filled: true,
                    fillColor: const Color.fromARGB(186, 150, 227, 209),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    labelText: 'Password',
                    filled: true,
                    fillColor: const Color.fromARGB(186, 150, 227, 209),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // print('clicked');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Text(
                      AppStrings.forgotPassword,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(AppRouts.main);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellowAccent),
                      child: Text(
                        AppStrings.loginToContinue,
                      )),
                ),
                SizedBox(height: 35),
                Text(
                  AppStrings.signInWithUs,
                ),

                SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      //print('Google is clicked');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,

                      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icfacebook,
                          width: 80,
                          height: 35,
                        ),
                        SizedBox(width: 08),
                        Text(
                          AppStrings.loginWithGoogle,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      //print('Facebook is clicked');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppIcons.icgoogle,
                          width: 80,
                          height: 35,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          AppStrings.loginWithFacebook,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        // print('Sign up is clicked');
                      },
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.amber),
                      child: Text(
                        AppStrings.signup,
                        style: TextStyle(decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
