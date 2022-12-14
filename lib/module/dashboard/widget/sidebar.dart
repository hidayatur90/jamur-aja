import 'package:flutter/material.dart';

class HDSideBar {
  static side() {
    Widget _buildDrawer() {
      return SizedBox(
        //membuat menu drawer
        child: Drawer(
          //membuat list,
          //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
          child: ListView(
            padding: EdgeInsets.zero,
            //di dalam listview ini terdapat beberapa widget drawable
            children: [
              const UserAccountsDrawerHeader(
                //membuat gambar profil
                currentAccountPicture: Image(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png")),
                //membuat nama akun
                accountName: Text("Sahretech"),
                //membuat nama email
                accountEmail: Text("ig: @sahretech"),
                //memberikan background
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2016/04/24/20/52/laundry-1350593_960_720.jpg"),
                        fit: BoxFit.cover)),
              ),
              //membuat list menu
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Pegawai"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text("Transaksi"),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.emoji_emotions),
                title: const Text("Profil"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text("Tentang"),
                onTap: () {},
              ),
            ],
          ),
        ),
      );
    }
  }
}
