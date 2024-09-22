import 'package:flutter/material.dart';

/// {@template teacher_features}
/// TeacherFeatures widget.
/// {@endtemplate}
class ProfessorFeatures extends StatelessWidget {
  final double objectivity;
  final double loyalty;
  final double professionalism;
  final double harshness;

  /// {@macro teacher_features}
  const ProfessorFeatures({
    super.key,
    required this.objectivity,
    required this.loyalty,
    required this.professionalism,
    required this.harshness, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: 120,
      decoration: BoxDecoration(
        color: const Color(0xffEEF9EF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Объективность'),
                Text('Лояльность'),
                Text('Профессионализм'),
                Text('Резкость'),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: objectivity / 5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: loyalty / 5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: professionalism / 5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: harshness / 5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objectivity.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  loyalty.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  professionalism.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  harshness.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
