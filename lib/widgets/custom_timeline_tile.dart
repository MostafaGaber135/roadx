import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final Widget endChild;
  final int number;
  const CustomTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.endChild,
    required this.number,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: const LineStyle(color: Colors.grey),
        indicatorStyle: IndicatorStyle(
          width: 40,
          color: Colors.grey.shade100,
          iconStyle: IconStyle(
            iconData: Icons.check,
            color: Colors.green,
          ),
          indicator: _buildNumberIndicator(),
        ),
        endChild: endChild,
      ),
    );
  }

  Widget _buildNumberIndicator() {
    return CircleAvatar(
      backgroundColor: Colors.green,
      child: Text(
        number.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
