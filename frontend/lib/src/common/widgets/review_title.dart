import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:poly_inside/src/common/utils/capitalizer.dart';
import 'package:poly_inside/src/common/widgets/professor_features.dart';
import 'package:poly_inside/src/common/widgets/reactions.dart';
import 'package:poly_inside/src/feature/initialization/widget/initialization.dart';
import 'package:poly_inside/src/feature/review/review_page.dart';
import 'package:shared/shared.dart';
import 'package:intl/intl.dart';

import '../../feature/authentication/widget/user_scope.dart';

/// {@template review_title}
/// ReviewTitle widget.
/// {@endtemplate}
class ReviewTitle extends StatelessWidget {
  final Review review;
  final Professor? professor;
  final User? user;
  final Reaction? reaction;

  /// {@macro review_title}
  const ReviewTitle(
      {super.key,
      required this.review,
      this.professor,
      this.user,
      this.reaction // ignore: unused_element
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
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        radius: 20,
                        child: ClipOval(
                          child: user == null
                              ? professor!.smallAvatar.isNotEmpty
                                  ? Image.memory(
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                      Uint8List.fromList(
                                        professor!.smallAvatar,
                                      ),
                                    )
                                  : SvgPicture.asset(
                                      'assets/icons/no_photo.svg',
                                      width: 30,
                                    )
                              : user!.avatar.isNotEmpty
                                  ? Image.memory(
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                      Uint8List.fromList(
                                        user!.avatar,
                                      ),
                                    )
                                  : SvgPicture.asset(
                                      'assets/icons/no_photo.svg',
                                      width: 30,
                                    ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          user == null
                              ? professor!.name.capitalize()
                              : user!.name,
                          overflow: TextOverflow.clip,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                (UserScope.userOf(context).id == review.userId)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => showCupertinoModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) => SizedBox(
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 32),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute<void>(
                                            builder: (builderContext) =>
                                                ReviewPage(
                                                    review: review,
                                                    professor: professor!,
                                                    type: ReviewType.edit),
                                          ),
                                        ),
                                        child: SizedBox(
                                          height: 75,
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/icons/editpen.svg'),
                                              const SizedBox(
                                                width: 32,
                                              ),
                                              const Text(
                                                'Редактировать отзыв',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    decoration:
                                                        TextDecoration.none),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        behavior: HitTestBehavior.opaque,
                                        onTap: () => showDialog(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            content: SizedBox(
                                              height: 90,
                                              child: Center(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    const Text(
                                                        'Вы точно хотите удалить данный отзыв?'),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        TextButton(
                                                          onPressed: () async {
                                                            await InitializationScope
                                                                    .repositoryOf(
                                                                        context)
                                                                .deleteReview(
                                                                    review.id)
                                                                .then(
                                                              (_) {
                                                                Navigator.pop(
                                                                    context);
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            );
                                                          },
                                                          child:
                                                              const Text('Да'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  context),
                                                          child:
                                                              const Text('Нет'),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        child: SizedBox(
                                          height: 75,
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/icons/trash.svg'),
                                              const SizedBox(
                                                width: 32,
                                              ),
                                              const Text(
                                                'Удалить отзыв',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    decoration:
                                                        TextDecoration.none),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/options.svg',
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
            const SizedBox(height: 8),
            Text(
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
                Reactions(
                  review: review,
                  reaction: reaction,
                  professor: professor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
