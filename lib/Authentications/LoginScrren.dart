import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yatri_clone/Authentications/ForgotPasswordPage.dart';

class loginScreen extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const loginScreen({Key? key, required this.showRegisterPage})
      : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  //email/Password controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isPasswordVisible = true;

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch(e){
      debugPrint(e.toString());
      showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            content: Text(e.message.toString(),
              textAlign: TextAlign.center,
            ),
          ));
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "yatra",
          style: TextStyle(color: Colors.red, fontSize: 30.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18.0,
            ),
            const Text(
              'Welcome to Yatra!',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Please Login/Sign Up using your Email/Mobile to continue',
              style: TextStyle(fontSize: 11.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                  width: 400,
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      Container(
                          width: 150,
                          height: 150,
                          child: Image.asset('assets/images/profile.png')),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: isPasswordVisible,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context){
                              return ForgotPassword();
                          },
                          ),
                          );
                        },
                          child: Text("Forgot Password ?",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold))),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: signIn,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[500],
                            padding: EdgeInsets.symmetric(
                                horizontal: 120, vertical: 15)),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 95),
                        child: GestureDetector(
                          onTap: widget.showRegisterPage,
                          child: Row(
                            children: [
                              Text("Not a member?"),
                              GestureDetector(
                                  onTap: widget.showRegisterPage,
                                  child: Text(
                                    "Register Now",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 7),
                        child: Text(
                          'By proceeding you are agree with our Terms of Service,Privacy Policy & User Agreement',
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
