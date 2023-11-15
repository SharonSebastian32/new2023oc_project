import 'package:flutter/material.dart';

class uiiiip extends StatelessWidget {
  const uiiiip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Center(
                child: SizedBox(
                  height: 400,
                  width: 400,
                  child: Image.asset("assets/images/img_2.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25), // Move "Login" to the left
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.indigoAccent,
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(35),
                ),
                height: 40,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "username", // Change the hint text
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(35),
                ),
                height: 40,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "password", // Change the hint text
                    ),
                    obscureText: true,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigoAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  minimumSize: Size(400, 40),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Center(
                child: SizedBox(
                  height: 250,
                  width: 470,
                  child: Image.asset("assets/images/img_1.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
