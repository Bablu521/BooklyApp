import 'package:flutter/material.dart';

class CustomHomeDetailsAppbar extends StatelessWidget {
  const CustomHomeDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:30 , right: 20 , top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.maybePop(context);}, icon: Icon(Icons.arrow_back_ios, size: 22 ,color: Colors.white ,)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined, size: 22, color: Colors.white ,),
          ),
        ],
      ),
    );
  }
}