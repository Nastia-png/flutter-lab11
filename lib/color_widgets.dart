import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_provider.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorProvider>(context);

    return Column(
      children: [
        _buildSlider(
          label: 'Red',
          value: colorProvider.red.toDouble(),
          onChanged: (value) => colorProvider.updateRed(value.toInt()),
        ),
        _buildSlider(
          label: 'Green',
          value: colorProvider.green.toDouble(),
          onChanged: (value) => colorProvider.updateGreen(value.toInt()),
        ),
        _buildSlider(
          label: 'Blue',
          value: colorProvider.blue.toDouble(),
          onChanged: (value) => colorProvider.updateBlue(value.toInt()),
        ),
      ],
    );
  }

  Widget _buildSlider(
      {required String label,
      required double value,
      required ValueChanged<double> onChanged}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Slider(
          value: value,
          min: 0,
          max: 255,
          divisions: 255,
          label: value.round().toString(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class PreviewContainer extends StatelessWidget {
  const PreviewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorProvider>(context);

    return Container(
      width: double.infinity,
      height: 200,
      color: colorProvider.color,
    );
  }
}
