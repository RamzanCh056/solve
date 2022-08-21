import 'package:flutter/material.dart';
import 'package:solve/screens/auth/login_screen.dart';
import 'package:solve/screens/auth/signup_screen.dart';
class SocialRegister extends StatefulWidget {
  const SocialRegister({Key? key}) : super(key: key);

  @override
  State<SocialRegister> createState() => _SocialRegisterState();
}

class _SocialRegisterState extends State<SocialRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(

            child: Column(children: [
              const SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Image.asset("assets/Signup.png")

              ],),
              const SizedBox(height: 20,),
              const Text("Let’s you in", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                fontSize: 30,

                overflow: TextOverflow.ellipsis,
              ),

              ),
              const SizedBox(height: 40,),
              Column(children: [
                SizedBox(
                  width: 300,
                  height: 60,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                       elevation: 4,
                    child: ListTile(
                      leading:  Image.asset("assets/Facebook.png"),
                      title: const Text("Continue with Facebook",   style:  TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),

                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 4,
                    child: ListTile(
                      leading:  Image.asset("assets/Google.png"),
                      title:  const Text("Continue with Google",   style:  TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    )

                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 4,
                    child: ListTile(
                      leading:  Image.asset("assets/Apple.png", ),

                      title: const Text("Continue with Apple",   style:  TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ),


              ],),
              const     SizedBox(height: 10,),
              const Text("or",   style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,


              ),textAlign: TextAlign.center,

              ),
              const     SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: const Color(0xff5FDED7),
                    minWidth: 195,
                    height: 55,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color:  Color(0xff5FDED7),),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Text(
                      "Sign in with password",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],),
              const     SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text("Don't have an account?",   style:  TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));
                    },
                    child: const Text("Sign-up",   style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,


                    )

                    ),
                  )  ],
              ),
              const SizedBox(height: 15,),

            ],),
          ),
        ),
    );
  }
}
