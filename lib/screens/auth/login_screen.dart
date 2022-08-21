import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:solve/screens/auth/signup_screen.dart';
import 'package:solve/screens/home/freemium.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController  = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";
  bool obscure =true;
  bool isLoading = false;
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          child: SingleChildScrollView(

            child: Column(
              children: [
               const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Row(children: const [
                    Icon(Icons.arrow_back,size: 30,color: Colors.black,)
                  ],),
                ),

                const SizedBox(height: 20,),
                Row(
                  children: const [
                  Expanded(
                    child: Text("Login to Your\n Account", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                      fontSize: 30,

                      overflow: TextOverflow.ellipsis,
                    ),

                    ),
                  ),
                ],),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Form(
                   key: formKey,
                   child: Column(children: [
                     const SizedBox(height: 20,),
                     TextFormField(
                       decoration: const InputDecoration(
                         hintText: 'Email',
                         prefixIcon: Icon(Icons.email),
                         hintStyle: TextStyle(color: Colors.grey),
                         border: OutlineInputBorder(),
                         errorStyle:
                         TextStyle(color: Colors.redAccent, fontSize: 15),
                         filled: true,
                         fillColor:   Color(0xffFAF9F8),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Color(0xffFAF9F8), width: 2),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                           borderSide: BorderSide(color:  Color(0xffFAF9F8), width: 2),
                         ),
                       ),
                       controller: emailController,
                       validator: (value) {
                         if (value == null || value.isEmpty) {
                           return 'Please Enter Email';
                         } else if (!value.contains('@')) {
                           return 'Please Enter Valid Email';
                         }
                         return null;
                       },

                     ),
                     const SizedBox(height: 15,),
                     TextFormField(
                       obscureText: obscure ,
                       decoration:  InputDecoration(
                         hintText: 'Password',
                         prefixIcon: const Icon(Icons.lock_clock_rounded),
                         suffixIcon: InkWell(
                             onTap: (){
                               setState(() {
                                 obscure = !obscure;
                               });
                             },
                             child:
                             obscure? const Icon(Icons.visibility_off):       const Icon(Icons.remove_red_eye_outlined)),
                         hintStyle: const TextStyle(color: Colors.grey),
                         border: const OutlineInputBorder(),
                         errorStyle:
                         const TextStyle(color: Colors.redAccent, fontSize: 15),
                         filled: true,
                         fillColor:   const Color(0xffFAF9F8),
                         enabledBorder: const OutlineInputBorder(
                           borderSide: BorderSide(color: Color(0xffFAF9F8), width: 2),
                         ),
                         focusedBorder: const OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(10.0)),
                           borderSide: BorderSide(color:  Color(0xffFAF9F8), width: 2),
                         ),
                       ),
                       controller: passwordController,
                       validator: (value) {
                         if (value == null || value.isEmpty) {
                           return 'Please Enter Password';
                         }
                       },

                     ),
                     const SizedBox(height: 5,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Theme(
                           data: Theme.of(context).copyWith(
                             unselectedWidgetColor: Colors.black,

                             disabledColor: Colors.black,
                           ),
                           child: Checkbox(

                             shape: RoundedRectangleBorder( // Making around shape
                                 borderRadius: BorderRadius.circular(2)),
                             focusColor: Colors.black,
                             checkColor: Colors.white,
                             activeColor: Colors.redAccent,

                             value: _checkbox,
                             onChanged: (value) {
                               setState(() {
                                 _checkbox = !_checkbox;
                               });
                             },
                           ),
                         ),
                         const Text(
                           "Remember me?",
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),
                   ],),
                 ),
               ),
                     const SizedBox(height: 15,),
                isLoading
                    ? const Center(
                  child: SizedBox(
                      width: 80,
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballBeat,
                        colors: [
                          Color(0xff5FDED7),
                        ],
                        strokeWidth: 2,
                        pathBackgroundColor:
                        Color(0xff5FDED7),)),
                ): Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 MaterialButton(
                   color: const Color(0xff5FDED7),
                   minWidth: 165,
                   height: 55,
                   onPressed: () {
                     if (formKey.currentState!.validate()) {
                       setState(() {
                         email = emailController.text;
                         password = passwordController.text;
                       });
                       userLogin();
                     }

                   },
                   shape: RoundedRectangleBorder(
                     side: const BorderSide(color:  Color(0xff5FDED7),),
                     borderRadius: BorderRadius.circular(40),
                   ),
                   child: const Text(
                     "Login",
                     style: TextStyle(
                       fontWeight: FontWeight.w600,
                       fontSize: 16,
                       color: Colors.black,
                     ),
                   ),
                 ),
               ],),
                const SizedBox(height: 20,),
                const Text("Forgot the  Password?",   style: TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold

                ),textAlign: TextAlign.center,

                ),
                const SizedBox(height: 15,),
                const Text("or continue with",   style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,


                ),textAlign: TextAlign.center,

                ),
                const SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(
                    height: 65,
                    width: 75,
                    child: Card(
                        elevation: 3,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Image.asset("assets/Facebook.png"),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    height: 65,
                    width: 75,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Image.asset("assets/Google.png"),
                    ),
                  ),
                    const SizedBox(width: 10,),
                  SizedBox(
                    height: 65,
                    width: 75,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child: Image.asset("assets/Apple.png"),
                    ),
                  )
                ],),
                const SizedBox(height: 20,),
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
                    child: const Text(" Sign up",   style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,


                    )

                    ),
                  )  ],
                )


              ],
            ),
          ),
        ),
      )
    );
  }
  userLogin() async {
    isLoading = true;
    setState(() {});
    try {
      UserCredential userCredential=await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // print(userCredential.user?.uid);
      //await storage.write(key: "uid", value: userCredential.user?.uid);
      isLoading = false;
      setState(() {});
      Fluttertoast.showToast(msg: 'Successfully logged in');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MusicianFreemium (),
        ),
      );


    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print("No User Found for that Email");
        isLoading = false;
        setState(() {});
        Fluttertoast.showToast(msg: 'No User Found for that Email');

      } else if (e.code == 'wrong-password') {
        print("Wrong Password Provided by User");
        isLoading = false;
        setState(() {});
        Fluttertoast.showToast(msg: 'Wrong Password Provided by User');

      }
    }
  }

}
