import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meta/meta.dart';
import 'package:poly_inside/src/common/extensions/string.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/common/widgets/professor_features.dart';
import 'package:poly_inside/src/feature/home/bloc/home_bloc.dart';
import 'package:poly_inside/src/feature/initialization/widget/initialization.dart';
import 'package:poly_inside/src/feature/professor_profile/bloc/data_bloc.dart';
import 'package:shared/shared.dart';

import '../../../common/enums/sorting_type.dart';
import '../../../common/widgets/sort_button.dart';

/// {@template professor_profile_page}
/// ProfessorProfilePage widget.
/// {@endtemplate}
class ProfessorProfilePage extends StatefulWidget {
  final String professorId;
  final HomeBloc? homeBloc;

  /// {@macro professor_profile_page}
  const ProfessorProfilePage({
    required this.professorId,
    this.homeBloc,
    super.key,
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
  ScrollController? _scrollController;
  ValueNotifier<bool>? _valueNotifier;
  ValueNotifier<int>? _sortingValueNotifier;
  ValueNotifier<bool>? _buttonVisibilityNotifier;
  ProfessorDataBLoC? _bloc;
  late Professor professor;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController?.addListener(scrollListener);
    _valueNotifier = ValueNotifier(false);
    _sortingValueNotifier = ValueNotifier(0);
    _buttonVisibilityNotifier = ValueNotifier(true);

    super.initState();
  }

  void scrollListener() {
    if (_scrollController?.position.pixels == _scrollController?.position.minScrollExtent) {
      _valueNotifier!.value = false;
    } else if (_scrollController?.position.pixels == _scrollController?.position.maxScrollExtent) {
      _buttonVisibilityNotifier!.value = false;
    } else {
      _buttonVisibilityNotifier!.value = true;
      _valueNotifier!.value = true;
    }
  }

  @override
  void didUpdateWidget(covariant ProfessorProfilePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Widget configuration changed
  }

  @override
  void didChangeDependencies() {
    _bloc ??= ProfessorDataBLoC(repository: InitializationScope.repositoryOf(context))
      ..add(
        ProfessorDataRequested(
          professorId: widget.professorId,
        ),
      );
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    // _valueNotifier?.dispose();
    _bloc?.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _valueNotifier!,
        builder: (context, value, _) => ValueListenableBuilder(
          valueListenable: _buttonVisibilityNotifier!,
          builder: (context, visibilityValue, _) => Visibility(
            visible: visibilityValue,
            child: FloatingActionButton.extended(
              onPressed: () {
                value
                    ? _scrollController?.animateTo(0,
                        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut)
                    : Navigator.of(context).pushNamed('/review', arguments: professor);
              },
              backgroundColor: Colors.green,
              label: AnimatedSize(
                duration: const Duration(milliseconds: 150),
                child: Center(
                  child: value
                      ? const Icon(Icons.arrow_upward)
                      : const Text(
                          'Написать отзыв',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                ),
              ),
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
          BlocBuilder<HomeBloc, HomePageState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const Placeholder(),
              loaded: (professors) {
                _valueNotifier!.value = professors.isEmpty;
                professor = professors.where((e) => e.id == widget.professorId).first;
                return SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: [
                            Hero(
                              tag: professor.id,
                              child: CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  radius: 69,
                                  backgroundImage: Uint8List.fromList(professor.avatar).isNotEmpty
                                      ? MemoryImage(
                                          Uint8List.fromList(professor.avatar),
                                        )
                                      : null,
                                  child: Uint8List.fromList(professor.avatar).isEmpty
                                      ? SvgPicture.asset(
                                          'assets/icons/no_photo.svg',
                                          width: 69,
                                        )
                                      : null),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: Text(
                                textAlign: TextAlign.center,
                                professor.name.capitalize(),
                                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                StarsRating(
                                  value: professor.rating,
                                  size: const Size(32, 32),
                                  spaceBetween: 23,
                                  textSize: 28,
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                            ProfessorFeatures(
                              objectivity: professor.objectivity,
                              harshness: professor.harshness,
                              loyalty: professor.loyalty,
                              professionalism: professor.professionalism,
                              textSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            bloc: widget.homeBloc,
          ),
          BlocBuilder<ProfessorDataBLoC, ProfessorDataState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const SliverToBoxAdapter(
                child: SizedBox(),
              ),
              loaded: (professors) {
                return SliverToBoxAdapter(
                  child: professors.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Отзывы",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        width: professors.isNotEmpty ? professors.length.toString().length * 20 : 30,
                                        height: 26,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 233, 252, 232),
                                          borderRadius: BorderRadius.circular(7),
                                        ),
                                        child: Center(
                                          child: AnimatedFlipCounter(
                                            value: professors.length,
                                            duration: const Duration(milliseconds: 200),
                                            textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SortButton(valueNotifier: _sortingValueNotifier, type: SortingType.reviews),
                                ],
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(),
                );
              },
            ),
            bloc: _bloc,
          ),
          BlocBuilder<ProfessorDataBLoC, ProfessorDataState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const SliverToBoxAdapter(
                child: SizedBox(),
              ),
              loaded: (professors) {
                if (professors.isEmpty) {
                  if (_valueNotifier!.value) {
                    _valueNotifier!.value = false;
                    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
                  }
                }
                return SliverList.separated(
                  itemCount: professors.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    return ReviewTitle(
                      review: professors[index].review,
                      professor: professor,
                      user: professors[index].user,
                      reaction: professors[index].reaction,
                    );
                  },
                );
              },
            ),
            bloc: _bloc,
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          )
        ],
      )),
    );
  }
}
