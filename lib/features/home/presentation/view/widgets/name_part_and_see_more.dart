
import 'package:flutter/material.dart';

class NamePartAndSeeMore extends StatelessWidget {
  const NamePartAndSeeMore({
    super.key,
    required this.name,
    required this.onPressed,
    this.isSeeAll = true,
  });

  final String name;
  final Function() onPressed;
  final bool isSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          isSeeAll == false
              ? SizedBox.shrink()
              : TextButton(
                  onPressed: () {
                    onPressed();
                  },
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
