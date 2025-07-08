import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pry_menu_grid_provider/viewmodels/drawer_viewmodel.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final vm = Provider.of<DrawerViewModel>(context);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.yellow],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.directions_bike, size: 48, color: Colors.white),
                Text("Traveling",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                Text("www.traveling.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    )),
              ],
            ),
          ),
          ListTile(
            selected: vm.selected == 'Home',
            selectedTileColor: Colors.orange.shade300,
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              vm.select('Home');
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            selected: vm.selected == 'Cycling',
            selectedTileColor: Colors.orange.shade300,
            leading: Icon(Icons.directions_bike),
            title: Text('Cycling'),
            onTap: () {
              vm.select('Cycling');
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cycling');
            },
          ),
          Divider(),
          ListTile(
            selected: vm.selected == 'Walking',
            selectedTileColor: Colors.orange.shade300,
            leading: Icon(Icons.directions_walk),
            title: Text('Walking'),
            onTap: () {
              vm.select('Walking');
              Navigator.pop(context);
              Navigator.pushNamed(context, '/walking');
            },
          ),
          Divider(),
          
        ],
      ),
    );
  }
}