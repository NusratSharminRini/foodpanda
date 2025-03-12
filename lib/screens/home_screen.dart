import 'package:flutter/material.dart';
import '../widgets/menu_item.dart';
import '../utils/app_colors.dart';

class FoodPandaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Food Panda', style: TextStyle(fontSize: 20, color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // Foodpanda Logo
          Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/foodpanda_logo.png",
                  height: 80,
                ),
                Text(
                  "foodpanda",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
                ),
                SizedBox(height: 5),
                Text("Are you hungry? Order Now . . .", style: TextStyle(fontSize: 16, color: Colors.grey)),
                SizedBox(height: 20),
                Text("SET MENU", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
              ],
            ),
          ),

          // Menu Options
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuItem(icon: Icons.local_pizza, label: "Pizza"),
                MenuItem(icon: Icons.fastfood, label: "Burger"),
                MenuItem(icon: Icons.local_drink, label: "Juice"),
                MenuItem(icon: Icons.rice_bowl, label: "Fried Rice"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
