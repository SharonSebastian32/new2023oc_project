

import 'package:flutter/material.dart';
class interface2 extends StatefulWidget {
  const interface2({super.key});

  @override
  State<interface2> createState() => _interface2State();
}

class _interface2State extends State<interface2> {
  var emailCtr=TextEditingController();
  var passwordController= TextEditingController();
  bool secureText=true;
  GlobalKey<FormState> formkey= GlobalKey();
  var gender ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Form (
              key: formkey,
              child: ListView(
                children:  [
                   SizedBox(
                    height:25,


                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: InkWell(
                      onDoubleTap:  () {
                      print("double tap");
                    },
                      onLongPress: (){
                      print("Long press");

                      } ,
                      child:

                      Image(image: NetworkImage('https://sectigostore.com/blog/wp-content/uploads/2020/05/network-security-best-practices-940x588.jpg'),),

                    )

                  ),
                  SizedBox(
                    height: 20,

                  ),
                  TextFormField(
                    validator:  (v){
                      if (v!.isEmpty){
                        return "Empty Email";

                      }
                    },
                    controller: emailCtr,
                    decoration: InputDecoration(
                      hintText: "email"
                    ),
                  ),
                  SizedBox(
                    height: 20,

                  ),
                  TextFormField(
                    validator:  (v){
                      if (v!.isEmpty){
                        return "Empty Password"
                            ;

                      }
                    },
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: "password",

                    ),
                  ),

                ],
              ),

            ),
          ),
        ),

    ) ;
  }
}
