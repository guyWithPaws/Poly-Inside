import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grpc/grpc_web.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/repository/client_impl.dart';
import 'package:poly_inside/src/common/utils/capitalizer.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/common/widgets/professor_features.dart';
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
  // ignore: library_private_types_in_public_api
  static _ProfessorProfilePageState? maybeOf(BuildContext context) =>
      context.findAncestorStateOfType<_ProfessorProfilePageState>();

  @override
  State<ProfessorProfilePage> createState() => _ProfessorProfilePageState();
}

/// State for widget ProfessorProfilePage.
class _ProfessorProfilePageState extends State<ProfessorProfilePage> {
  ClientRepository? repository;
  ScrollController? _scrollController;
  ValueNotifier<bool>? _valueNotifier;

  /* #region Lifecycle */
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController?.addListener(scrollListener);

    _valueNotifier = ValueNotifier(false);

    super.initState();
    // Initial state initialization
  }

  void scrollListener() {
    if (_scrollController?.position.pixels !=
        _scrollController?.position.minScrollExtent) {
      _valueNotifier?.value = true;
    } else {
      _valueNotifier?.value = false;
    }
  }

  @override
  void didUpdateWidget(covariant ProfessorProfilePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    repository = ClientRepositoryImpl(
      client: SearchServiceClient(
        GrpcWebClientChannel.xhr(
          Uri.parse(
            'http://87.228.18.201:8080',
          ),
        ),
      ),
    );
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
        valueListenable: _valueNotifier!,
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
              pinned: false,
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
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      children: [
                        Hero(
                          tag: widget.professor.id,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 69,
                            child: ClipOval(
                              child: Uint8List.fromList(
                                widget.professor.avatar,
                              ).isNotEmpty
                                  ? Image.memory(
                                      height: 138,
                                      width: 138,
                                      fit: BoxFit.cover,
                                      Uint8List.fromList(
                                        widget.professor.avatar,
                                      ),
                                    )
                                  : SvgPicture.asset(
                                      'assets/icons/no_photo.svg',
                                      width: 69,
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Text(
                            textAlign: TextAlign.center,
                            widget.professor.name.capitalize(),
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StarsRating(
                              value: widget.professor.rating,
                              size: const Size(32, 32),
                            ),
                            const SizedBox(width: 16.0),
                            Text('${widget.professor.rating}')
                          ],
                        ),
                        const SizedBox(height: 32),
                        const ProfessorFeatures(),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Отзывы',
                              style: TextStyle(fontSize: 20),
                            ),
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
            StreamBuilder<Object>(
                stream:
                    repository?.getAllReviewsByProfessor(widget.professor.id),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const Center(
                      child: Text('Отзывов пока нет'),
                    );
                  }
                  return SliverList.separated(
                    itemCount: 10,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 16),
                    itemBuilder: (context, index) {
                      debugPrint(snapshot.toString());
                      return const Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 16.0),
                        child: ReviewTitle(),
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
