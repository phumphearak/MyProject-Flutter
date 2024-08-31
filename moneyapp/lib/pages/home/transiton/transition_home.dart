import 'package:flutter/material.dart';

class TransitionHome extends StatelessWidget {
  const TransitionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Row(children: [
          Container(
            child: Text("Transatons"),
          ),
          Container(
            child: Text("See all"),
          )
        ])
      ],
    );
  }
}
