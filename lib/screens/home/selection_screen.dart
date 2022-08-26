import 'package:flutter/material.dart';
import 'package:solve/screens/auth/social_registers.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
          child: Column(
            children:  [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    'Please select your sign-up choice',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 18),
                child: Column(children: [
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                   Image.asset("assets/Musician.png"),

                 ],),
                  Row(
                    children: [
                      MaterialButton(
                        color: const Color(0xff5FDED7),
                        minWidth: 170,
                        height: 55,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SocialRegister()));
                        },
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color:  Color(0xff5FDED7),),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Text(
                          "Musicians",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Image.asset("assets/girl.png"),

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      color: const Color(0xff5FDED7),
                      minWidth: 170,
                      height: 55,
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>const SocialRegister()));
                      },
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color:  Color(0xff5FDED7),),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Text(
                        "Venues / Promoters",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 18),
                  child: Column(children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Image.asset("assets/boy.png"),

                      ],),
                    Row(
                      children: [
                        MaterialButton(
                          color: const Color(0xff5FDED7),
                          minWidth: 170,
                          height: 55,
                          onPressed: () {
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>const SocialRegister()));
                          },
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color:  Color(0xff5FDED7),),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Text(
                            "Consumers",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],),
                ),
              ],),
              
            ],)
              
            ],
          ),
        ),
      ),
    );
  }
}
