import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// {@template review_title}
/// ReviewTitle widget.
/// {@endtemplate}
class ReviewTitle extends StatelessWidget {
  /// {@macro review_title}
  const ReviewTitle({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 249, 237),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      child: ClipOval(
                          child: Image.network(
                        'https://img.gazeta.ru/files3/98/13461098/instapic-96812-pic905-895x505-66022.jpg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      )),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "Руль Николай Игоревич",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  'assets/icons/editpen.svg',
                  alignment: Alignment.topRight,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Лучший препод эвер!!! Спасибо что имел на протяжении сема на каждой практике и лабе. Тупа лучший!!!',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Объективность'),
                      Text('Лояльнось'),
                      Text('Профессионализм'),
                      Text('Резкость'),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              width: 150, child: LinearProgressIndicator()),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              width: 150, child: LinearProgressIndicator()),
                          SizedBox(
                              width: 150, child: LinearProgressIndicator()),
                          SizedBox(
                              width: 150, child: LinearProgressIndicator()),
                        ],
                      ),
                      SizedBox(height: 30),
                      Column(
                        children: [
                          const Text('5.0',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          const Text('5.0',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          const Text('5.0',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                          const Text('5.0',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Июнь 2024",
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/like.svg',
                          alignment: Alignment.bottomRight,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "5",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/dislike.svg',
                          alignment: Alignment.bottomRight,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "5",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
