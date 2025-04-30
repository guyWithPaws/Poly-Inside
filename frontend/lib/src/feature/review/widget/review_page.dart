import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/extensions/string.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';
import 'package:poly_inside/src/feature/review/bloc/review_bloc.dart';
import 'package:shared/shared.dart';
import 'package:rive/rive.dart' as rive;
import 'package:crypto/crypto.dart';

import '../../../common/enums/review_type.dart';

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

  ReviewDataBLoC? _bloc;

  rive.RiveAnimationController? _successAnimationController;
  rive.RiveAnimationController? _errorAnimationController;

  /* #region Lifecycle */
  @override
  void initState() {
    _textEditingController = TextEditingController();

    _successAnimationController = rive.OneShotAnimation(
      'Comp 1', // Не менять название анимации
      autoplay: true,
      onStop: () {
        Navigator.of(context).pop();
        Navigator.of(context).pop();
      },
    );

    _errorAnimationController = rive.OneShotAnimation('Comp 1',
        autoplay: true, onStop: () => Navigator.pop);

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
  void didChangeDependencies() {
    _bloc ??= ReviewDataBLoC();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _textEditingController?.dispose();
    _valueHarshnessNotifier?.dispose();
    _valueLoayltyNotifier?.dispose();
    _valueObjectivityNotifier?.dispose();
    _valueProfessionalismNotifier?.dispose();

    _successAnimationController?.dispose();
    _errorAnimationController?.dispose();

    _bloc?.close();
    super.dispose();
  }

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
          var review = compileReview(widget.type);
          if (widget.type == ReviewType.add) {
            _bloc?.add(AddReviewRequest(review: review, context: context));
          } else {
            _bloc?.add(UpdateReviewRequest(review: review, context: context));
          }

          // bool passed = true;
          // if (widget.type == ReviewType.add) {
          //   passed = await InitializationScope.repositoryOf(context)
          //       .addReview(outputReview);
          // } else {
          //   outputReview.id = widget.review!.id;
          //   await InitializationScope.repositoryOf(context)
          //       .updateReview(outputReview);
          // }

          await showDialog(
            context: context,
            builder: (builderContext) {
              return AlertDialog(
                content: SizedBox(
                  width: 300,
                  height: 130,
                  child: Center(
                      child: BlocBuilder<ReviewDataBLoC, ReviewDataState>(
                    bloc: _bloc,
                    builder: (context, state) {
                      return state.when(
                        processing: () => const CircularProgressIndicator(),
                        error: (error, description) => SizedBox(
                          child: Text(description),
                        ),
                        approved: () => SizedBox(
                          width: 100,
                          height: 100,
                          child: rive.RiveAnimation.asset(
                            'assets/rive/success.riv',
                            controllers: [_successAnimationController!],
                          ),
                        ),
                        rejected: () => const SizedBox(
                          width: 150,
                          height: 150,
                          child: rive.RiveAnimation.asset(
                            'assets/rive/error.riv',
                          ),
                        ),
                      );
                    },
                  )),
                ),
              );
            },
          );
          // ).then((_) {
          //   if (passed) Navigator.of(context).pop();
          // });
        },
        backgroundColor: Colors.green,
        label: Center(
          child: Text(
              widget.type == ReviewType.add ? 'Опубликовать' : 'Изменить',
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
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
              RepaintBoundary(
                child: Container(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Review compileReview(ReviewType type) {
    String generatedReviewId = '';

    if (type == ReviewType.add) {
      var reviewIdBytes = utf8.encode(
          UserScope.userOf(context).id.toString() + DateTime.now().toString());
      generatedReviewId = sha1.convert(reviewIdBytes).toString();
    } else if (type == ReviewType.edit) {
      generatedReviewId = widget.review!.id;
    }

    var outputReview = Review(
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
    return outputReview;
  }
}
