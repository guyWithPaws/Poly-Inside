import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/extensions/string.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/feature/initialization/widget/initialization.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';
import 'package:shared/shared.dart';
import 'package:rive/rive.dart' as rive;
import 'package:crypto/crypto.dart';

import '../../common/enums/review_type.dart';

/// {@template review_page}
/// ReviewPage widget.
/// {@endtemplate}
class ReviewPage extends StatefulWidget {
  final Professor professor;
  final Review? review;
  final ReviewType type;

  /// {@macro review_page}
  const ReviewPage({
    super.key,
    required this.professor,
    this.review,
    required this.type, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  // ignore: library_private_types_in_public_api
  static _ReviewPageState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_ReviewPageState>();

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

/// State for widget ReviewPage.
class _ReviewPageState extends State<ReviewPage> {
  TextEditingController? _textEditingController;
  ValueNotifier<String>? _valueTextFormNotifier;
  ValueNotifier<double>? _valueLoayltyNotifier;
  ValueNotifier<double>? _valueProfessionalismNotifier;
  ValueNotifier<double>? _valueHarshnessNotifier;
  ValueNotifier<double>? _valueObjectivityNotifier;

  rive.RiveAnimationController? _animationController;

  /* #region Lifecycle */
  @override
  void initState() {
    _textEditingController = TextEditingController();

    _animationController = rive.OneShotAnimation(
      'Comp 1', // Не менять название анимации
      autoplay: true,
      onStop: () => Navigator.of(context).pop(),
    );

    if (widget.type == ReviewType.edit) {
      _textEditingController!.text = widget.review!.comment;
    }
    _textEditingController?.addListener(_textEditingListener);

    _valueLoayltyNotifier = ValueNotifier(1.0);
    _valueLoayltyNotifier = ValueNotifier(1.0);
    _valueProfessionalismNotifier = ValueNotifier(1.0);
    _valueHarshnessNotifier = ValueNotifier(1.0);
    _valueObjectivityNotifier = ValueNotifier(1.0);

    _valueTextFormNotifier = ValueNotifier('');

    super.initState();
    // Initial state initialization
  }

  void _textEditingListener() {
    _valueTextFormNotifier!.value = _textEditingController!.text.trim();
  }

  @override
  void didUpdateWidget(covariant ReviewPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // The configuration of InheritedWidgets has changed
    // Also called after initState but before build
  }

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Оцените преподавателя',
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 185, 185, 185),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset('assets/icons/cross.svg'),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var reviewIdBytes = utf8.encode(
              UserScope.userOf(context).id.toString() +
                  DateTime.now().toString());
          var generatedReviewId = sha1.convert(reviewIdBytes).toString();
          Review outputReview = Review(
              id: generatedReviewId,
              objectivity: _valueObjectivityNotifier!.value,
              loyalty: _valueLoayltyNotifier!.value,
              likes: 0,
              dislikes: 0,
              harshness: _valueHarshnessNotifier!.value,
              professionalism: _valueProfessionalismNotifier!.value,
              date: DateTime.now().toString(),
              userId: UserScope.userOf(context).id,
              comment: _valueTextFormNotifier!.value,
              professorId: widget.professor.id);
          bool passed = true;
          if (widget.type == ReviewType.add) {
            passed = await InitializationScope.repositoryOf(context)
                .addReview(outputReview);
          } else {
            outputReview.id = widget.review!.id;
            await InitializationScope.repositoryOf(context)
                .updateReview(outputReview);
          }

          await showDialog(
            context: context,
            builder: (builderContext) {
              return AlertDialog(
                content: SizedBox(
                  width: 300,
                  height: (passed) ? 130 : 200,
                  child: Center(
                    child: Column(
                      children: [
                        (passed)
                            ? SizedBox(
                                width: 100,
                                height: 100,
                                child: rive.RiveAnimation.asset(
                                  'assets/rive/success.riv',
                                  // onInit: (artboard) => setState(() {
                                  //   final controller =
                                  //       rive.StateMachineController
                                  //           .fromArtboard(artboard, 'Test');
                                  //   artboard.addController(controller!);
                                  // }),
                                  controllers: [_animationController!],
                                ),
                              )
                            : const SizedBox(
                                width: 150,
                                height: 150,
                                child: rive.RiveAnimation.asset(
                                  'assets/rive/error.riv',
                                ),
                              ),
                        (passed)
                            ? AnimatedTextKit(
                                isRepeatingAnimation: false,
                                animatedTexts: [
                                  TyperAnimatedText(
                                      'Ваш отзыв успешно сохранён')
                                ],
                              )
                            : AnimatedTextKit(
                                isRepeatingAnimation: false,
                                animatedTexts: [
                                  TyperAnimatedText('Проверьте свой отзыв')
                                ],
                              ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ).then((_) {
            if (passed) Navigator.of(context).pop();
          });
        },
        backgroundColor: Colors.green,
        label: Center(
          child:
              Text(widget.type == ReviewType.add ? 'Опубликовать' : 'Изменить'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Hero(
                    tag: widget.professor.id,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 35,
                      child: ClipOval(
                        child: Uint8List.fromList(
                          widget.professor.avatar,
                        ).isNotEmpty
                            ? Image.memory(
                                height: 70,
                                width: 70,
                                fit: BoxFit.cover,
                                Uint8List.fromList(
                                  widget.professor.avatar,
                                ),
                              )
                            : SvgPicture.asset(
                                'assets/icons/no_photo.svg',
                                width: 40,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      widget.professor.name.capitalize(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Рейтинг по категориям',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 170,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 249, 237),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Объективность'),
                          Text('Лояльность'),
                          Text('Профессионализм'),
                          Text('Резкость'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StarsRating(
                            valueNotifier: _valueObjectivityNotifier,
                            value: widget.review?.objectivity ?? 1,
                            size: const Size(24, 24),
                            textSize: 20,
                            enableDragDetector: true,
                            spaceBetween: 16,
                          ),
                          StarsRating(
                            valueNotifier: _valueLoayltyNotifier,
                            value: widget.review?.loyalty ?? 1,
                            size: const Size(24, 24),
                            textSize: 20,
                            enableDragDetector: true,
                            spaceBetween: 16,
                          ),
                          StarsRating(
                            valueNotifier: _valueProfessionalismNotifier,
                            value: widget.review?.professionalism ?? 1,
                            size: const Size(24, 24),
                            textSize: 20,
                            enableDragDetector: true,
                            spaceBetween: 16,
                          ),
                          StarsRating(
                            valueNotifier: _valueHarshnessNotifier,
                            value: widget.review?.harshness ?? 1,
                            size: const Size(24, 24),
                            textSize: 20,
                            enableDragDetector: true,
                            spaceBetween: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Оставьте комментарий:')),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 238, 249, 237),
                    borderRadius: BorderRadius.circular(12)),
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _textEditingController,
                      keyboardType: TextInputType.multiline,
                      minLines: 9,
                      maxLines: null,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
