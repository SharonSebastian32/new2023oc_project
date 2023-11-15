import 'package:flutter/material.dart';
import 'package:myoctoberapp/chatwha.dart';
import 'package:myoctoberapp/login.dart';
import 'package:myoctoberapp/main.dart';
import 'package:myoctoberapp/myaavu.dart';
import 'package:myoctoberapp/welcomepage.dart';
import 'package:myoctoberapp/whaaui.dart';

class readli extends StatefulWidget {
  const readli({super.key});

  @override
  State<readli> createState() => _readliState();
}

class _readliState extends State<readli> {
  int currentIndex=0;
  late PageController pgc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pgc = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat
          ),label: "")

        ],
        currentIndex: currentIndex,
        fixedColor: Colors.red,
        onTap: (index){
          currentIndex=index;
          pgc.jumpToPage(index);

          setState(() {

          });




        },





      ),
      body: PageView(
        onPageChanged: (index){
          currentIndex = index;
          setState(() {

          });
        },
        controller: pgc,
        children: [sherlin(),Meeting()],
      ),

    );
  }
}

