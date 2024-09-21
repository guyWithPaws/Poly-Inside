import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';

/// {@template review_page}
/// ReviewPage widget.
/// {@endtemplate}
class ReviewPage extends StatefulWidget {
  /// {@macro review_page}
  const ReviewPage({
    super.key, // ignore: unused_element
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
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
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
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          'Оцените преподавателя',
          textAlign: TextAlign.center,
        )),
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
          showDialog(
            context: context,
            builder: (builderContext) {
              return const AlertDialog(
                content: SizedBox(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: Text('Загружаем Ваш отзыв..'),
                  ),
                ),
              );
            },
          );
        },
        backgroundColor: Colors.green,
        label: const Center(child: Text('Опубликовать')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          const Text('Рейтинг по категориям'),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 284,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(''),
                  Row(
                    children: [
                      SizedBox(width: 300, child: LinearProgressIndicator()),
                      Text('5.0')
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(''),
                  Row(
                    children: [
                      SizedBox(width: 300, child: LinearProgressIndicator()),
                      Text('5.0')
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(''),
                  Row(
                    children: [
                      SizedBox(width: 300, child: LinearProgressIndicator()),
                      Text('5.0')
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(''),
                  Row(
                    children: [
                      SizedBox(width: 300, child: LinearProgressIndicator()),
                      Text('5.0')
                    ],
                  ),
                  SizedBox(height: 8),
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
          TextField(
            keyboardType: TextInputType.multiline,
            minLines: 10,
            maxLines: 11,
          )
        ]),
      ),
    );
  }
}
