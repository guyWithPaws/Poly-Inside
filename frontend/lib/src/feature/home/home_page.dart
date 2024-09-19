import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grpc/grpc_web.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/repository/client_impl.dart';
import 'package:poly_inside/src/common/utils/capitalizer.dart';
import 'package:poly_inside/src/feature/home/search_bar.dart';
import 'package:poly_inside/src/common/widgets/stars_rating.dart';
import 'package:poly_inside/src/feature/professor_profile/professor_profile_page.dart';
import 'package:poly_inside/src/feature/profile/profile_page.dart';
import 'package:shared/shared.dart';

/// {@template home_page}
/// HomePage widget.
/// {@endtemplate}
class HomePage extends StatefulWidget {
  /// {@macro home_page}
  const HomePage({
    super.key, // ignore: unused_element
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ClientRepository? repository;
  TextEditingController? _textEditingController;
  ScrollController? _scrollController;

  bool? showFloatingButton;
  String? searchProfessorPattern;
  int? listViewCounter;
  static const int amountOfContentLoaded = 40;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    _textEditingController?.addListener(textEditingListener);

    _scrollController = ScrollController();
    _scrollController?.addListener(scrollListener);

    showFloatingButton = false;
    setState(() {
      listViewCounter = amountOfContentLoaded;
    });

    super.initState();
  }

  void textEditingListener() {
    setState(() {
      searchProfessorPattern = _textEditingController?.text.toLowerCase();
    });
  }

  void scrollListener() {
    if (_scrollController?.position.pixels ==
        _scrollController?.position.maxScrollExtent) {
      setState(() {
        listViewCounter = (listViewCounter! + amountOfContentLoaded);
      });
    }
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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poly Inside',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
              surface: Colors.white,
              onSurface: Colors.black,
              primary: const Color.fromARGB(255, 98, 225, 250),
              secondary: const Color.fromARGB(255, 61, 127, 249),
              tertiary: const Color.fromARGB(255, 29, 94, 247),
              outline: Colors.grey.shade700)),
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          isExtended: showFloatingButton!,
          onPressed: () {},
          backgroundColor: Colors.green,
          label: const Center(
            child: Icon(CupertinoIcons.up_arrow),
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
                                  builder: (builderContext) =>
                                      const ProfilePage()));
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
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: FutureBuilder<GetListProfessorResponse>(
                    future: repository!.getAllProfessors(listViewCounter!),
                    builder: (context, snapshot) {
                      var professorList = <Professor>[];
                      if (!snapshot.hasData) {
                        return const Center(
                          child: Text(
                            'Nothing to show...',
                          ),
                        );
                      }
                      if (snapshot.hasData) {
                        professorList = (searchProfessorPattern != null)
                            ? snapshot.data!.professors
                                .where((professor) => professor.name.contains(
                                    searchProfessorPattern.toString()))
                                .toList()
                            : snapshot.data!.professors.toList();

                        debugPrint(professorList.toString());
                      }
                      return ListView.separated(
                        controller: _scrollController,
                        itemCount: professorList.length,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 25,
                        ),
                        itemBuilder: (context, index) {
                          return Builder(builder: (builderContext) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  builderContext,
                                  MaterialPageRoute<void>(
                                    builder: (builderContext) =>
                                        const ProfessorProfilePage(),
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
                                      CircleAvatar(
                                        backgroundColor: Colors.grey[200],
                                        radius: 27,
                                        child: ClipOval(
                                          child: Uint8List.fromList(
                                            professorList[index].avatar,
                                          ).isNotEmpty
                                              ? Image.memory(
                                                  height: 60,
                                                  width: 60,
                                                  fit: BoxFit.cover,
                                                  Uint8List.fromList(
                                                    professorList[index].avatar,
                                                  ),
                                                )
                                              : SvgPicture.asset(
                                                  'assets/icons/no_photo.svg',
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
                                              professorList[index]
                                                  .name
                                                  .capitalize(),
                                              style: const TextStyle(
                                                overflow: TextOverflow.clip,
                                              ),
                                            ),
                                            Stack(
                                              children: [
                                                Row(
                                                  children: [
                                                    StarsRating(
                                                      size: const Size(20, 20),
                                                      value:
                                                          professorList[index]
                                                              .rating,
                                                    ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                      '${professorList[index].rating}',
                                                    )
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    (professorList[index]
                                                                .rating ==
                                                            0)
                                                        ? 'нет отзывов'
                                                        : professorList[index]
                                                            .reviewsCount
                                                            .toString(),
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
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
