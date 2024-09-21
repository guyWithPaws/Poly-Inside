import 'package:flutter/material.dart';

/// {@template teacher_features}
/// TeacherFeatures widget.
/// {@endtemplate}
class ProfessorFeatures extends StatelessWidget {
  /// {@macro teacher_features}
  const ProfessorFeatures({
    super.key, // ignore: unused_element
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
            Column(
              //crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: 0.5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: 0.5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: 0.5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: const Color.fromARGB(255, 182, 248, 186),
                    value: 0.5,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('5.0',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Text('5.0',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Text('5.0',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Text('5.0',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
