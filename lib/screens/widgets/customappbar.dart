import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppbar({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      
      title: Center(
        child: Container(
          color: Colors.black,
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 4.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [IconButton(onPressed: () {
                  Navigator.pushNamed(context, "/wishlist");
                }, icon: const Icon(Icons.favorite))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
