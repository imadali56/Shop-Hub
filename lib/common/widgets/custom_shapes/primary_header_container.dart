import 'package:animated_container/common/widgets/custom_shapes/rounded_edges_container.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: 320,
      color: UColors.primary,
        child: Stack(
          children: [
            /// child
            child
          ],
        ),// stack
      
      ),
    );// container
  }
}


