import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../container_config_provider.dart'; // Імпорт нашого класу стану

class SlidersSection extends StatelessWidget {
  const SlidersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ContainerConfigProvider>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildControlRow(
          label: "Width: ${state.width.toStringAsFixed(2)}",
          value: state.width,
          min: 50,
          max: 300,
          onChanged: (val) => context.read<ContainerConfigProvider>().setWidth(val),
        ),
        _buildControlRow(
          label: "Height: ${state.height.toStringAsFixed(2)}",
          value: state.height,
          min: 50,
          max: 300,
          onChanged: (val) => context.read<ContainerConfigProvider>().setHeight(val),
        ),
        _buildControlRow(
          label: "Radius: ${state.topRightRadius.toStringAsFixed(2)}",
          value: state.topRightRadius,
          min: 0,
          max: 150,
          onChanged: (val) => context.read<ContainerConfigProvider>().setRadius(val),
        ),
      ],
    );
  }

  Widget _buildControlRow({
    required String label,
    required double value,
    required double min,
    required double max,
    required Function(double) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(
          value: value,
          min: min,
          max: max,
          onChanged: onChanged,
        ),
      ],
    );
  }
}