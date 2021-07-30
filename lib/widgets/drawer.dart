import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        BuildContext,
        CircleAvatar,
        Colors,
        Container,
        Drawer,
        DrawerHeader,
        EdgeInsets,
        Icon,
        Key,
        ListTile,
        ListView,
        NetworkImage,
        StatelessWidget,
        Text,
        UserAccountsDrawerHeader,
        Widget;

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Favatars0.githubusercontent.com%2Fu%2F12619420%3Fs%3D460%26u%3D26db98cbde1dd34c7c67b85c240505a436b2c36d%26v%3D4&imgrefurl=http%3A%2F%2Fphoenix.yizimg.com%2Fiampawan&tbnid=_MVSPMj2HSl6JM&vet=12ahUKEwixlpHOt4ryAhUg1XMBHSFBCeQQMygBegQIARBa..i&docid=2B5KJQyzawP0iM&w=460&h=460&q=iampawan&ved=2ahUKEwixlpHOt4ryAhUg1XMBHSFBCeQQMygBegQIARBa";
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Sarat"),
                accountEmail: Text("anyaccount@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.red,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.red,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
