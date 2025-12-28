import 'package:animated_container/common/widgets/custom_shapes/rounded_edges_container.dart';
import 'package:animated_container/utilities/constant/color.dart';
import 'package:animated_container/utilities/helpers/device_helper.dart';
import 'package:flutter/material.dart';

import 'clippers/custom_rounded_clipper.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return URoundedEdgesContainer(
      child: Container(
        height: UDeviceHelper.getScreenHeight(context)*0.4,
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


