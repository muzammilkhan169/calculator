import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';

class CustomNeumorphicButton extends StatelessWidget {
  final double? height, width;
  final Widget child;
  final VoidCallback onTap;
  final bool isRounded;
  const CustomNeumorphicButton(
      {Key? key,
      required this.child,
      required this.onTap,
      this.isRounded = true,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      child: SizedBox(
          height: height ?? 13.5.w,
          width: width ?? 13.5.w,
          child: Center(child: child)),
      onPressed: onTap,
      style: buttonStyles(),
    );
  }

  NeumorphicStyle buttonStyles() {
    return NeumorphicStyle(
      boxShape: isRounded
          ? const NeumorphicBoxShape.circle()
          : NeumorphicBoxShape.roundRect(BorderRadius.circular(40)),
      depth: 5,
      surfaceIntensity: 1,
      lightSource: LightSource.topLeft,
      color: Colors.white,
    );
  }
}
