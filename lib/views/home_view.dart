import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pry_menu_grid_provider/viewmodels/drawer_viewmodel.dart';
import 'package:pry_menu_grid_provider/viewmodels/bottom_nav_viewmodel.dart';
import 'package:pry_menu_grid_provider/views/pages/accomodation_view.dart';
import 'package:pry_menu_grid_provider/views/pages/food_view.dart';
import 'package:pry_menu_grid_provider/views/pages/search_view.dart';
import 'drawer_view.dart';

class HomeView extends StatelessWidget {
  final List<Widget> pages = [
    AccommodationView(),
    FoodView(),
    SearchView()
  ];
  @override
  Widget build(BuildContext context) {
    //instanciar provider
    final vm = Provider.of<DrawerViewModel>(context);
    final navVm = Provider.of<BottomNavViewmodel>(context);
    return Scaffold(
      appBar: AppBar(title: Text(vm.selected)),
      drawer: DrawerView(),
      // body: Center(
      //   child: Text(
      //     'Pantalla de ${vm.selected}',
      //     style: TextStyle(fontSize: 22),
      //   ),
      // ),
      body: pages[navVm.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navVm.currentIndex,
        onTap: navVm.changeIndex,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Hospedaje',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Comida',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
        ],
        
      ),
    );
  }
}
