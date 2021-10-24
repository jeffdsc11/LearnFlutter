import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl=
        "https://static.wikia.nocookie.net/naruto/images/3/33/Naruto_Uzumaki_%28Parte_I_-_HD%29.png/revision/latest?cb=20160316113315&path-prefix=pt-br";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
               padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                      margin: EdgeInsets.zero,
                      accountName: Text("Jefferson"),
                      accountEmail: Text("jeffersondsc11@gmail.com"),
                      currentAccountPicture: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(imageUrl),
                      ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
                            color: Colors.white),
              title: Text("Home",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.white),
              title: Text("Profile",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,
                  color: Colors.white),
              title: Text("Email me",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
