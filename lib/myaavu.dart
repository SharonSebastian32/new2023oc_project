import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sherlin extends StatefulWidget {
  const sherlin({super.key});

  @override
  State<sherlin> createState() => _sherlinState();
}

class _sherlinState extends State<sherlin> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,



      appBar: AppBar(

        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Primary',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/img_6.png'),
                      fit: BoxFit.cover)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/sharon.jpg'),
                    ),
                    Text(
                      "Sharon Sebastian",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: Text(
                        "sharonsebastian81@gmail.com",
                        style: TextStyle(fontSize: 8.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            navtile(idata: Icons.inbox, Title: "All Inboxes",count: " " ),
            Divider(
              height: 1.0,
            ),
            navtile(idata: Icons.people, Title: "Primary", count: "99+",colr: Colors.yellowAccent),
            navtile(idata: Icons.more, Title: "Social", count: " ",),
            navtile(idata: Icons.star, Title: "Starred", count: "1",colr: Colors.orangeAccent),
            navtile(idata: Icons.alarm, Title: "Snoozed", count: " ",),
            navtile(idata: Icons.play_arrow, Title: "Sent", count: "99+",colr: Colors.greenAccent),
            Divider(
              height: 1.0,
            ),
            navtile(idata: Icons.bookmark, Title: "Saved Items", count: "5",colr: Colors.deepPurpleAccent),
            navtile(idata: Icons.insert_drive_file, Title: "Drafts", count: ''),
            navtile(idata: Icons.drafts, Title: "Promotions", count: "",),
            Divider(
              height: 1.0,
            ),
            navtile(idata: Icons.delete, Title: "Bin", count: "72",colr: Colors.purpleAccent),
            navtile(
                idata: Icons.label_important, Title: "Important", count: "88",colr: Colors.blueAccent),
            navtile(idata: Icons.send, Title: "Sent", count: "1",colr: Colors.pinkAccent),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,

        onPressed: () {
          // Respond to button press
        },
        icon: Icon(Icons.edit,color: Colors.black,),
        label: Text('Compose',style: TextStyle(
          color: Colors.black
        ),),
      ),


      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            toptaile(
                title: "Socials",
                subtitle: "Google+",
                idata: Icons.people,
                Icolor: Colors.blue,
                mesg: '3 New'),
            Divider(
              height: 0.1,
            ),
            toptaile(
                title: "Promotions",
                subtitle: "Swiggy,Google Offer",
                idata: Icons.more,
                Icolor: Colors.green,
                mesg: '7 New'),
            Divider(
              height: 0.1,
            ),
            toptaile(
                title: "Updates",
                subtitle: "Google Pay",
                idata: Icons.info,
                Icolor: Colors.orange,
                mesg: '10 New'),
            Divider(
              height: 0.1,
            ),
            msglist(
                url: 'assets/images/sheeba.png',
                name: "Mom",
                msg: "Buy 1/2Kg Sugar and CoffePowder",
                tim: "5:40 PM",
                isunread: false),
            msglist(
                url:
                'assets/images/aswin.jpg',
                name: "Teekey",
                msg: "Sent your contribution to Magazine",
                tim: "7:40 AM",
                isunread: true),
            msglist(
                url: 'assets/images/boat.png',
                name: "Boat Nirvana",
                msg: "Your Product is ready for the Delivery",
                tim: "9:30 PM",
                isunread: false),
            msglist(
                url: 'assets/images/sreeraj.png',
                name: "Sreeraj",
                msg: "Sent me the question paper",
                tim: "6:00 PM",
                isunread: true),
            msglist(
                url: 'assets/images/firevolt.png',
                name: "FireBolt",
                msg: "Thankyou for choosing FireBolt",
                tim: "3:40 PM",
                isunread: true),
            msglist(
                url: 'assets/images/myg.png',
                name: "MyG",
                msg: "Christmas Offers",
                tim: "8:0 PM",
                isunread: false),
            msglist(
                url: 'assets/images/airtel.png',
                name: "Airtel",
                msg: "Your new connection will activates soon",
                tim: "1:00",
                isunread: false),
            msglist(
                url: 'assets/images/RD.png',
                name: "Ramshad",
                msg: "How to give drawer without the app bar",
                tim: "7:00 PM",
                isunread: true),
          ],
        ),
      ),








    );
  }

  ListTile navtile(
      {required IconData idata,
        required String Title,
        required String count,
        Color? colr}) {
    return ListTile(
      leading: Icon(idata),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            Title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            color: colr,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            child: Text(
              count,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  ListTile msglist(
      {String? url,
        String? name,
        String? msg,
        String? tim,
        required bool isunread}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: ExactAssetImage(url!),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name!,
            style: TextStyle(
                fontWeight: isunread ? FontWeight.bold : FontWeight.normal),
          ),
          Text(tim!)
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(msg!),
          Icon(
            Icons.star_border,
            size: 25,
          )
        ],
      ),
    );
  }

  ListTile toptaile(
      {required String title,
        required String subtitle,
        required IconData idata,
        required Color Icolor,
        String? mesg}) {
    return ListTile(
      leading: Icon(
        idata,
        color: Icolor,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        color: Icolor,
        child: Text(
          mesg!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
