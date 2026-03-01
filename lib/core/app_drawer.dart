import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text("Menu", style: TextStyle(fontSize: 20)),
          ),
          _item(context, "Broadcast Receiver", AppRoutes.broadcast),
          _item(context, "Image Scale", AppRoutes.image),
          _item(context, "Video", AppRoutes.video),
          _item(context, "Audio", AppRoutes.audio),
        ],
      ),
    );
  }

  Widget _item(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.pushReplacementNamed(context, route),
    );
  }
}