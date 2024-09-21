import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:shared/shared.dart';

/// {@template review_page}
/// ReviewPage widget.
/// {@endtemplate}
class ReviewPage extends StatefulWidget {
  final Professor professor;
  final ClientRepository repository;

  /// {@macro review_page}
  const ReviewPage({
    super.key,
    required this.professor,
    required this.repository, // ignore: unused_element
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
  /* #region Lifecycle */
  @override
  void initState() {
    _textEditingController = TextEditingController();
    _textEditingController?.addListener(_textEditingListener);
    super.initState();
    // Initial state initialization
  }

  void _textEditingListener() {}

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
        onPressed: () {
          // showDialog(
          //   context: context,
          //   builder: (builderContext) {
          //     return const AlertDialog(
          //       content: SizedBox(
          //         width: 100,
          //         height: 50,
          //         child: Center(
          //           child: Text('Загружаем Ваш отзыв..'),
          //         ),
          //       ),
          //     );
          //   },
          // ).then((a) {
          debugPrint('Trying to add review///');
          widget.repository.addReview(
            Review(
                objectivity: 1,
                loyalty: 1,
                likes: 5,
                dislikes: 3,
                harshness: 1,
                professionalism: 1,
                date: DateTime.now().toString(),
                userId: 123,
                comment: 'Бим бим бам бам',
                professorId: widget.professor.id),
          );
        },
        backgroundColor: Colors.green,
        label: const Center(child: Text('Опубликовать')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const Text('Рейтинг по категориям'),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 249, 237),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text('Объективность'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StarsRating(
                          value: 1,
                          size: const Size(30, 30),
                          enableDragDetector: true,
                          spaceBetween: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Лояльность'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StarsRating(
                          value: 1,
                          size: const Size(30, 30),
                          enableDragDetector: true,
                          spaceBetween: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Профессионализм'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StarsRating(
                          value: 1,
                          size: const Size(30, 30),
                          enableDragDetector: true,
                          spaceBetween: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text('Резкость'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StarsRating(
                          value: 1,
                          size: const Size(30, 30),
                          enableDragDetector: true,
                          spaceBetween: 16,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
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
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 9,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
