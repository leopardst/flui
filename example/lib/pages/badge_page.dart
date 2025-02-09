import 'package:flui/flui.dart';
import 'package:flutter/material.dart';

class BadgePage extends StatefulWidget {
  static const String routeName = '/badge';

  @override
  State<BadgePage> createState() => _BadgePageState();
}

class _BadgePageState extends State<BadgePage> {
  bool _showBadge = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Badge'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('show badges: '),
                SizedBox(width: 4),
                Checkbox(
                  value: _showBadge,
                  onChanged: (value) => setState(() => _showBadge = value),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: FLBadge(
                child: Icon(Icons.home),
                hidden: !_showBadge,
                shape: FLBadgeShape.circle,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: FLBadge(
                child: Icon(Icons.chat),
                hidden: !_showBadge,
                text: '99+',
              ),
              label: 'chat'),
          BottomNavigationBarItem(
            icon: FLBadge(
              child: Icon(Icons.shopping_cart),
              hidden: !_showBadge,
              position: FLBadgePosition.topLeft,
              shape: FLBadgeShape.spot,
            ),
            label: 'cart',
          )
        ],
      ),
    );
  }
}
