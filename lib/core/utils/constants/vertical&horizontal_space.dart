
import 'package:flutter/material.dart';

class VirticalSpacer extends StatelessWidget {
  const VirticalSpacer(this.verticalSpace,{super.key});
  final verticalSpace;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: verticalSpace.toDouble());
  }
}
class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer(this.horizontalSpace,{super.key});
  final horizontalSpace;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(width: horizontalSpace.toDouble());
  }
}
