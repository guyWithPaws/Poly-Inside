import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:grpc/service_api.dart';
import 'package:poly_inside/src/common/utils/capitalizer.dart';
import 'package:poly_inside/src/common/utils/word_formatter.dart';
import 'package:poly_inside/src/feature/home/home_bloc.dart';
import 'package:poly_inside/src/feature/home/search_bar.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/professor_profile/professor_profile_page.dart';
import 'package:poly_inside/src/feature/user_profile/user_profile_page.dart';

/// {@template home_page}
/// HomePage widget.
/// {@endtemplate}
class HomePage extends StatefulWidget {
  // ignore: library_private_types_in_public_api
  static _HomePageState? of(BuildContext context) =>
      context.findAncestorStateOfType<_HomePageState>();

  /// {@macro home_page}
  const HomePage({
    super.key, // ignore: unused_element
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? _scrollController;
  ValueNotifier<bool>? _valueNotifier;
  HomeBloc? _bloc;
  TextEditingController? _textEditingController;
  bool? showFloatingButton;
  String? searchProfessorPattern;
  String reviewInRussian = 'отзыв';
  int count = 20;

  @override
  void initState() {
    _valueNotifier = ValueNotifier(false);
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController?.position.pixels ==
            _scrollController?.position.maxScrollExtent) {
          count += 20;
          _bloc?.add(ListRequested(count: count));
        }
        if (_scrollController?.position.pixels !=
            _scrollController?.position.minScrollExtent) {
          _valueNotifier?.value = true;
        } else {
          _valueNotifier?.value = false;
        }
      });
    _textEditingController = TextEditingController()
      ..addListener(() => _bloc?.add(TextFieldChanged(
          name: _textEditingController?.text.toLowerCase() ?? '')));
    _valueNotifier = ValueNotifier(false);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _bloc ??= HomeBloc(repository: InitializationScope.repositoryOf(context))
      ..add(ListRequested(count: count));
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _textEditingController?.dispose();
    _scrollController?.dispose();
    _valueNotifier?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _valueNotifier!,
        builder: (context, value, _) => Visibility(
          visible: _valueNotifier!.value,
          child: FloatingActionButton.extended(
            onPressed: () {
              _scrollController!.animateTo(0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn);
            },
            backgroundColor: Colors.green,
            label: const Center(
              child: Icon(CupertinoIcons.up_arrow),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Builder(builder: (builderContext) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          builderContext,
                          MaterialPageRoute<void>(
                            builder: (builderContext) => ProfilePage(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 31,
                        child: ClipOval(
                          child: Image.asset(
                            fit: BoxFit.cover,
                            height: 62,
                            width: 62,
                            'assets/beer.jpg',
                          ),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(
                    width: 30,
                  ),
                  ProfessorSearchBar(
                    controller: _textEditingController,
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Преподаватели',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: BlocBuilder<HomeBloc, HomePageState>(
                  bloc: _bloc,
                  builder: (context, state) {
                    return state.when(
                      processing: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      idle: () => const Placeholder(),
                      error: (error) => Center(
                        child: Text(error.toString()),
                      ),
                      loaded: (professors) {
                        // debugPrint(professors.toString());
                        return ListView.separated(
                          controller: _scrollController,
                          itemCount: professors.length,
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 25,
                          ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                _textEditingController?.clear();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (builderContext) =>
                                        ProfessorProfilePage(
                                      repository:
                                          InitializationScope.repositoryOf(
                                              context),
                                      professor: professors[index],
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width: 360,
                                height: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xFFEEF9EF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Hero(
                                        tag: professors[index].id,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.grey[200],
                                          radius: 27,
                                          child: ClipOval(
                                            child: Uint8List.fromList(
                                              professors[index].avatar,
                                            ).isNotEmpty
                                                ? Image.memory(
                                                    height: 60,
                                                    width: 60,
                                                    fit: BoxFit.cover,
                                                    Uint8List.fromList(
                                                      professors[index].avatar,
                                                    ),
                                                  )
                                                : SvgPicture.asset(
                                                    'assets/icons/no_photo.svg',
                                                  ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              professors[index]
                                                  .name
                                                  .capitalize(),
                                              style: const TextStyle(
                                                overflow: TextOverflow.clip,
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                StarsRating(
                                                  size: const Size(20, 20),
                                                  value:
                                                      professors[index].rating,
                                                  spaceBetween: 8,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    (professors[index].rating ==
                                                            0)
                                                        ? 'нет отзывов'
                                                        : '${professors[index].reviewsCount} ${reviewInRussian.formatReview(professors[index].reviewsCount)}',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
