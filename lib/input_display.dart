import 'package:flutter/material.dart';

class InputDisplay extends StatelessWidget {
  final Function submitChange;

  InputDisplay({required this.submitChange});

  @override
  Widget build(BuildContext context) {
    final TextEditingController input = TextEditingController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
            onSubmitted: (string) => submitChange(input),
            controller: input,
            showCursor: true,
          ),
        ),
        ElevatedButton(
          onPressed: () => submitChange(input),
          child: const Text("Set text"),
        )
      ],
    );
  }
}
