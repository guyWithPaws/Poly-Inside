import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:shared/shared.dart';

class ProfilePage extends StatefulWidget {
  /// {@macro profile_page}
  const ProfilePage({
    super.key, // ignore: unused_element
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _valueNotifier?.dispose();
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _valueNotifier!,
        builder: (context, value, _) => Visibility(
          visible: _valueNotifier!.value,
          child: FloatingActionButton.extended(
            onPressed: () {
              _scrollController?.animateTo(0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
            },
            backgroundColor: Colors.green,
            label: const AnimatedSize(
              duration: Duration(milliseconds: 150),
              child: Center(child: Icon(CupertinoIcons.up_arrow)),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: FutureBuilder<List<Review>>(
          future:
              InitializationScope.repositoryOf(context).getAllReviewByUser(123),
          builder: (context, snapshot) {
            return CustomScrollView(slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                surfaceTintColor: Colors.white,
                expandedHeight: 60,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.only(left: 5),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 185, 185, 185),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset('assets/icons/cross.svg'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 26,
                        height: 26,
                        margin: const EdgeInsets.only(right: 5),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: SvgPicture.asset(
                            'assets/icons/profileeditbutton.svg'),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Column(children: [
                        CircleAvatar(
                          radius: 158 / 2,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/beer.jpg',
                              height: 158,
                              width: 158,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const Text("ID: 7921375",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                        const Text("goxa",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Мудрец",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ]),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 21,
                        ),
                        const Text(
                          "Отзывы",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 20,
                          height: 26,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 252, 232),
                              borderRadius: BorderRadius.circular(7)),
                          child: const Center(
                              child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                  ],
                ),
              ),
              snapshot.hasData
                  ? SliverList.separated(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ReviewTitle(
                          review: snapshot.data![index],
                          professor: Professor(),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                    )
                  : SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const Center(
                            child: Text('Нет данных'),
                          )
                        ],
                      ),
                    ),
            ]);
          }),
    );
  }
}
