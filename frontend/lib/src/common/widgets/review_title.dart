import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poly_inside/src/common/widgets/professor_features.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/review/review_page.dart';
import 'package:shared/shared.dart';
import 'package:intl/intl.dart';

import '../../feature/telegram/user_scope.dart';

/// {@template review_title}
/// ReviewTitle widget.
/// {@endtemplate}
class ReviewTitle extends StatelessWidget {
  final Review review;
  final Professor? professor;

  /// {@macro review_title}
  const ReviewTitle({
    super.key,
    required this.review,
    this.professor, // ignore: unused_element
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
                      backgroundColor: Colors.grey[200],
                      radius: 20,
                      child: ClipOval(
                        child: UserScope.userOf(context).avatar.isNotEmpty
                            ? Image.asset(
                                'assets/beer.jpg',
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover,
                              )
                            : SvgPicture.asset(
                                'assets/icons/no_photo.svg',
                                width: 30,
                              ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    FutureBuilder<User>(
                      future: InitializationScope.repositoryOf(context)
                          .getUserByUserId(review.userId),
                      builder: (context, snapshot) {
                        return Text(
                          snapshot.hasData
                              ? snapshot.data!.name
                              : snapshot.data.toString(),
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        );
                      },
                    ),
                  ],
                ),
                (UserScope.userOf(context).id == review.userId)
                    ? GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (builderContext) => ReviewPage(
                              professor: Professor(),
                              review: review,
                            ),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/editpen.svg',
                          alignment: Alignment.topRight,
                        ),
                      )
                    : const SizedBox(),
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
                // Reactions(
                //  review: review,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
