import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 191, 255, .9),
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 191, 255, .9),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              /*email*/ SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email or Phone number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              /*password*/ SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    child: const Text('Forgot password?'),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              /*login*/ Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 191, 255, .9),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 50,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Opacity(
                opacity: 0.5,
                child: Text(
                  '                                                                            ',
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Opacity(
                opacity: 0.5,
                child: Text(
                  'or',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 115,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            'Facebook',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 115,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 0, 0, 0.77),
                          border: Border.all(
                            width: 2,
                            color: const Color.fromRGBO(255, 0, 0, 0.77),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            'Google',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: const Text(
                            'Github',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(),
                  ),
                  TextButton(
                    child: const Text('Sign up'),
                    onPressed: () {
                      /// to add a Signup Screen
                      /// Navigator.push(
                      ///   context,
                      ///   MaterialPageRoute(
                      ///       builder: (context) => SignUpScreen()),
                      /// );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
