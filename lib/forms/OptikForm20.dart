// OptikForm.dart
import 'package:flutter/material.dart';

class OptikForm20 extends StatefulWidget {
  final Map<int, String> answers;
  final Function(int, String) onAnswerChanged;

  OptikForm20({required this.answers, required this.onAnswerChanged});

  @override
  _OptikFormState createState() => _OptikFormState();
}

class _OptikFormState extends State<OptikForm20> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Soru ${index + 1}:',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    buildOption('A', index),
                    buildOption('B', index),
                    buildOption('C', index),
                    buildOption('D', index),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildOption(String option, int index) {
    return Row(
      children: [
        Radio<String>(
          value: option,
          groupValue: widget.answers[index],
          onChanged: (value) {
            widget.onAnswerChanged(index, value!);
          },
        ),
        Text(option),
      ],
    );
  }
}
