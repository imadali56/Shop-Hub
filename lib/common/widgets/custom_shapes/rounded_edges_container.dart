import 'package:animated_container/common/widgets/custom_shapes/clippers/custom_rounded_clipper.dart';
import 'package:flutter/material.dart';
class URoundedEdgesContainer extends StatelessWidget {
  const URoundedEdgesContainer({super.key, required this.child});
final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: UCustomRoundedEdges(),
      child: child ,
    );
  }
}
