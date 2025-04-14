import 'package:flutter/material.dart';

class RecipeStep extends StatefulWidget {
  final VoidCallback? onEdit;
  final String text;
  final int stepCOUNT;

  const RecipeStep(
      {super.key, this.onEdit, required this.stepCOUNT, required this.text});

  @override
  _RecipeStepState createState() => _RecipeStepState();
}

class _RecipeStepState extends State<RecipeStep> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 26,
            width: 69,
            child: Text(
              widget.stepCOUNT < 10
                  ? "STEP ${widget.stepCOUNT.toString().padLeft(2, '0')}"
                  : "STEP ${widget.stepCOUNT.toString()}",
              style: const TextStyle(
                fontFamily: "PretenderardVariable",
                fontWeight: FontWeight.bold,
                backgroundColor: Color.fromRGBO(60, 177, 150, 1.0),
                color: Color.fromRGBO(255, 255, 255, 1.0),
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            widget.text,
            style: const TextStyle(
              fontFamily: "PretenderardVariable",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(32, 32, 32, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
