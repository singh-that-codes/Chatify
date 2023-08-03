import 'package:flutter/material.dart';
//import 'package:fluttter_test_application/pages/home_page.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                const Text(
                  'Hello, welcome back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Login to continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                const SizedBox(
                  height: 60,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(131, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    hintText: 'Username',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(131, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    hintText: 'Password',
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('forgot password pressed');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Forgot Password'),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                      print('Login pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text('Login'),
                  ),
                ),
                Spacer(),
                const SizedBox(
                  height: 62.0,
                ),
                const Text(
                  'Or sign in with',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Login with google');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/google.png', width: 22.0, height: 22.0),
                            Text('Login with Google'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height:16.0
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Login with facebook');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/fb_logo.png', width: 22.0, height: 22.0),
                            Text('Login with Facebook'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    TextButton(
                      onPressed: (){}, 
                      style:TextButton.styleFrom(
                        foregroundColor: Colors.amber
                      ),
                      child: Text('Sign Up'),
                    ),
                  ],
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
