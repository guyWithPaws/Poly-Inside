import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poly_inside/src/common/widgets/professor_features.dart';
import 'package:poly_inside/src/common/widgets/reactions.dart';
import 'package:poly_inside/src/feature/review/review_page.dart';
import 'package:shared/shared.dart';
import 'package:intl/intl.dart';

/// {@template review_title}
/// ReviewTitle widget.
/// {@endtemplate}
class ReviewTitle extends StatelessWidget {
  final Review review;
  final Professor professor;

  /// {@macro review_title}
  const ReviewTitle({
    super.key,
    required this.review,
    required this.professor, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 249, 237),
        borderRadius: BorderRadius.circular(12),
      ),
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
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text(
                      "Руль Николай Игоревич",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (builderContext) => ReviewPage(
                        professor: professor,
                        review: review,
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/editpen.svg',
                    alignment: Alignment.topRight,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              textAlign: TextAlign.start,
              review.comment,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            ProfessorFeatures(
              objectivity: review.objectivity,
              harshness: review.harshness,
              loyalty: review.loyalty,
              professionalism: review.professionalism,
              textSize: 10,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    DateFormat.yMMMMd('ru_RU').format(
                        DateFormat('yyyy-MM-dd HH:mm:ss.SSSSSS')
                            .parse(review.date)),
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500)),
                //Reactions(
                //  review: review,
                //),
              ],
            )
          ],
        ),
      ),
    );
  }
}
