// ignore_for_file: library_private_types_in_public_api

import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/utils/capitalizer.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/feature/home/home_page.dart';
import 'package:poly_inside/src/feature/review/review_page.dart';
import 'package:shared/shared.dart';

/// {@template professor_profile_page}
/// ProfessorProfilePage widget.
/// {@endtemplate}
class ProfessorProfilePage extends StatefulWidget {
  final Professor professor;

  /// {@macro professor_profile_page}
  const ProfessorProfilePage({
    super.key,
    required this.professor, // ignore: unused_element
  });

  /// The state from the closest instance of this class
  /// that encloses the given context, if any.
  @internal
  static _ProfessorProfilePageState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_ProfessorProfilePageState>();

  @override
  State<ProfessorProfilePage> createState() => _ProfessorProfilePageState();
}

/// State for widget ProfessorProfilePage.
class _ProfessorProfilePageState extends State<ProfessorProfilePage> {
  ScrollController? _scrollController;
  ValueNotifier<bool>? _valueListenable;
  bool? enable;

  /* #region Lifecycle */
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController?.addListener(scrollListener);

    enable = false;

    _valueListenable = ValueNotifier(true);

    super.initState();
    // Initial state initialization
  }

  void scrollListener() {
    if (_scrollController?.position.pixels !=
        _scrollController?.position.minScrollExtent) {
      _valueListenable?.value = true;
    } else {
      _valueListenable?.value = false;
    }
  }

  @override
  void didUpdateWidget(covariant ProfessorProfilePage oldWidget) {
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
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _valueListenable!,
        builder: (context, value, _) => FloatingActionButton.extended(
          onPressed: () {
            value
                ? _scrollController?.animateTo(0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut)
                : Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (builderContext) => const ReviewPage()));
          },
          backgroundColor: Colors.green,
          label: AnimatedSize(
            duration: const Duration(milliseconds: 150),
            child: Center(
              child: value
                  ? const Icon(CupertinoIcons.up_arrow)
                  : const Text('Написать отзыв'),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
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
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 69,
                          child: ClipOval(
                              child: Image.memory(
                            height: 138,
                            width: 138,
                            fit: BoxFit.cover,
                            Uint8List.fromList(
                              widget.professor.avatar,
                            ),
                          )),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          widget.professor.name.capitalize(),
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StarsRating(
                              value: 4.8,
                              size: Size(32, 32),
                            ),
                            SizedBox(width: 16.0),
                            Text('4.8')
                          ],
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: MediaQuery.of(context).size.width - 32,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xffEEF9EF),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            const Text('Отзывы'),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 31,
                              height: 26,
                              decoration: BoxDecoration(
                                color: const Color(0xffEEF9EF),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: const Center(
                                child: Text('15'),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverList.separated(
              itemCount: 15,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0),
                  child: ReviewTitle(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
