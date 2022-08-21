import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: BottomAppBar(
        elevation: 5,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const ImageIcon(
                AssetImage('assets/icons/Home.png'),
                size: 35,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const ImageIcon(
                AssetImage('assets/icons/Compass.png'),
                size: 35,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 48.0),
            IconButton(
              icon: const ImageIcon(
                AssetImage('assets/icons/Magic Crystal Ball.png'),
                size: 35,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const ImageIcon(
                AssetImage('assets/icons/User.png'),
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
