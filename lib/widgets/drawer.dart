import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://cdn4.vectorstock.com/i/thumb-large/23/88/person-gray-photo-placeholder-man-vector-23522388.jpg";
    return Drawer(
        child: Container(
          color: Colors.deepPurple, //If we want to add a background color
          child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                // decoration: BoxDecoration(
                //   color: Colors.black
                // ),
                accountName: const Text(
                  "Sai Sidharth",
                  style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 1.1),
                ),
                accountEmail: const Text(
                  "shrichit69@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 1.1),
                ),
                currentAccountPicture: CircleAvatar(
                  // child: Image.network(imageURL)
                  backgroundImage: NetworkImage(imageURL),
                ),
              )
            ),
            const ListTile(
              leading: Icon(Icons.home_filled, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
              titleAlignment: ListTileTitleAlignment.center,
            ),
            const ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
              titleAlignment: ListTileTitleAlignment.center,
            ),
            const ListTile(
              leading: Icon(Icons.email, color: Colors.white),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
              titleAlignment: ListTileTitleAlignment.center,
            )
          ],
            ),
        ));
  }
}
