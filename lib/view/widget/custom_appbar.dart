import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleAppbar;
  final void Function()? opPressedIcon;
  final void Function()? opPressedIconFavorite;
  final void Function()? onPressedSearch;

  const CustomAppBar({Key? key,
    required this.titleAppbar,
    this.opPressedIcon,this.onPressedSearch,required this.opPressedIconFavorite}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: IconButton(icon: const Icon(Icons.search),onPressed: onPressedSearch,) ,
                  hintText: titleAppbar,
                  hintStyle: const TextStyle(fontSize: 18),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200]),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: opPressedIcon,
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 60,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: opPressedIconFavorite,
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }
}
