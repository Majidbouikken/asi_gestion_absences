import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 16,
          ),
          Flexible(child: Divider(thickness: 1,)),
          SizedBox(
            width: 16,
          ),
          Text('OR', style: Theme.of(context).textTheme.headline3,),
          SizedBox(
            width: 16,
          ),
          Flexible(child: Divider(thickness: 1,)),
          SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
