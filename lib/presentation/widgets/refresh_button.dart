import 'package:flutter/material.dart';

class RefreshButton extends StatelessWidget {
  final VoidCallback? onTap;
  const RefreshButton({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        Icons.autorenew,
        size: 30,
        color: Colors.blue,
      ),
    );
  }
}
