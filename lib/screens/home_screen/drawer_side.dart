import 'package:flutter/material.dart';

import '../../config/colors.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key key}) : super(key: key);

  @override
  Widget listTile({String title, IconData iconData}) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th?q=Nivea+Men+Logo&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-ID&cc=ID&setlang=en&adlt=strict&t=1&mw=247'),
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                  SizedBox(
                    // height: 40,
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome Guest"),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            side: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(iconData: Icons.home_outlined, title: "Home"),
            listTile(iconData: Icons.shop_outlined, title: "Keranjang"),
            listTile(iconData: Icons.person_outlined, title: "Profil"),
            listTile(
                iconData: Icons.notifications_outlined, title: "Notifikasi"),
            listTile(iconData: Icons.star_outline, title: "Rating & Review"),
            listTile(iconData: Icons.favorite_outline, title: "Wishlist"),
            listTile(iconData: Icons.copy_outlined, title: "Keluhan"),
            listTile(iconData: Icons.format_quote_outlined, title: "FAQ"),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kontak Support",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Hubungi Kami"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(": +628xxxxxxxxxx"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Email Kami "),
                        SizedBox(
                          width: 22,
                        ),
                        Text(": email@email.com"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          "Created By : rinaldi6698@gmail.com",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
