import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          DrawerHeader(
            child: Image.asset('lib/pics/whiteLogo.png'),
          ),

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/HomePage'),
            child: const ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/AboutPage'),
            child: const ListTile(
              leading: Icon(
                Icons.info_outlined,
                color: Colors.white,
              ),
              title: Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 580),

          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/IntroPage'),
            child: const ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}