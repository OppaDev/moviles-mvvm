import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:pry_menu_grid_provider/viewmodels/drawer_viewmodel.dart';
import 'package:pry_menu_grid_provider/views/home_view.dart';
import 'package:pry_menu_grid_provider/views/pages/cycling_page.dart';
import 'package:pry_menu_grid_provider/viewmodels/bottom_nav_viewmodel.dart';
import 'package:pry_menu_grid_provider/views/pages/accomodation_view.dart';
import 'package:pry_menu_grid_provider/views/pages/food_view.dart';
import 'package:pry_menu_grid_provider/views/pages/search_view.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> DrawerViewModel()),
        ChangeNotifierProvider(create: (_)=> BottomNavViewmodel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Traveling App',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            foregroundColor: Colors.white24,
            elevation: 2.0,
          ),          
        ),
        home: HomeView(),
        routes: {
          '/cycling': (_) => CyclingPage(),
          '/accommodation': (_) => AccommodationView(),
          '/food': (_) => FoodView(),
          '/search': (_) => SearchView(),
        },
      ),
    ),
  );
  // runApp(
  //   ChangeNotifierProvider(create: (_)=> DrawerViewModel(), 
  //     child: MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       title: 'Traveling App',
  //       theme: ThemeData(
  //         primarySwatch: Colors.orange,
  //         visualDensity: VisualDensity.adaptivePlatformDensity,
  //         appBarTheme: AppBarTheme(
  //           backgroundColor: Colors.orange,
  //           titleTextStyle: TextStyle(
  //             color: Colors.white,
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //           ),
  //           foregroundColor: Colors.white24,
  //           elevation: 2.0,
  //         ),          
  //       ),
  //       home: HomeView(),
  //       routes: {
  //         '/cycling': (_) => CyclingPage(),
  //       },
  //     ),
  //   ),
  // );
}