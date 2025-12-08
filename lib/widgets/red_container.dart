import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../container_config_provider.dart';

class RedContainerDisplay extends StatelessWidget {
  const RedContainerDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContainerConfigProvider>(
      builder: (context, state, child) {
        return Container(
          width: state.width,
          height: state.height,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(state.topRightRadius),
            ),
          ),
        );
      },
    );
  }
}