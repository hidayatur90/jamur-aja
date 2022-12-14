import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/after/shared/button.dart';
import 'package:fhe_template/module/after/shared/font-family.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/PGv8ZzG/me.jpg",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HDFontFamily(title: 'Rendy Kurniawan', fontSize: 20.0)
                            .WorkSansBold(),
                        HDFontFamily(title: 'Pelanggan', fontSize: 15.0)
                            .WorkSans(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 250,
                            ),
                            HDButtonPrimary(
                              title: 'View Profile',
                              height: 30,
                              width: 150,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ReProfileView(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          LayoutBuilder(
            builder: (context, constraint) {
              List menus = [
                {
                  "icon": Icons.home_outlined,
                  "label": "Dashboard",
                  "onTap": () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReDashboardView(),
                      ),
                    );
                  },
                },
                {
                  "icon": Icons.settings,
                  "label": "Settings",
                  "onTap": () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Container(),
                      ),
                    );
                  },
                },
                {
                  "icon": Icons.info_outline,
                  "label": "Help and Terms",
                  "onTap": () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Container(),
                      ),
                    );
                  },
                },
                {
                  "icon": Icons.login_outlined,
                  "label": "Logout",
                  "onTap": () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReLoginView(),
                      ),
                    );
                  },
                },
              ];

              return Wrap(
                children: List.generate(
                  menus.length,
                  (index) {
                    var item = menus[index];
                    return ListTile(
                      leading: Icon(item['icon']),
                      title: Text(item['label']),
                      onTap: () => item['onTap'](),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
