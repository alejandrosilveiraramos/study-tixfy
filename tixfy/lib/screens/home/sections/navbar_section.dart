import 'package:flutter/material.dart';
import 'package:tixfy/mock/navbar_data.dart';
import 'package:tixfy/models/navbar_data.dart';
import 'package:tixfy/utils/colors/tixfy_colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<NavBarData> navBarDataList = NavBarDataMock.getNavBarData();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: tixLight,
      child: ListView(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/images/logo/logoWhite.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                Scaffold.of(context).closeDrawer();
              },
              icon: const Icon(Icons.close),
              color: tixDark,
            ),
          ),
          for (NavBarData navBarData in navBarDataList)
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: ListTile(
                leading: Icon(getIconData(navBarData.iconBar)),
                iconColor: tixPrimary,
                title: Text(
                  navBarData.titleBar,
                  style: const TextStyle(
                    color: tixDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  IconData getIconData(String iconName) {
    switch (iconName) {
      case 'login':
        return Icons.login;
      case 'person':
        return Icons.person_outline_sharp;
      case 'location':
        return Icons.location_on_outlined;
      case 'help':
        return Icons.help_outline_rounded;
      default:
        return Icons.error;
    }
  }
}
