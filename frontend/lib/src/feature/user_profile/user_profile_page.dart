import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/feature/initialization/initialization.dart';
import 'package:poly_inside/src/feature/telegram/user_scope.dart';
import 'package:shared/shared.dart';

import '../../common/widgets/sort_button.dart';

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
  ValueNotifier<bool>? _isEditingProfile;
  final TextEditingController _textEditingController = TextEditingController();

  /* #region Lifecycle */
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController?.addListener(scrollListener);

    _valueNotifier = ValueNotifier(false);
    _isEditingProfile = ValueNotifier(false);

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
    _textEditingController.text = UserScope.userOf(context).name;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _valueNotifier?.dispose();
    _textEditingController.dispose();
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
              child: Center(
                child: Icon(CupertinoIcons.up_arrow),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: StreamBuilder<ReviewWithProfessorResponse>(
        stream:
            InitializationScope.repositoryOf(context).getReviewsWithProfessor(
          UserScope.userOf(context).id,
        ),
        builder: (context, snapshot) {
          return CustomScrollView(
            slivers: [
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
                      onTap: () =>
                          _isEditingProfile!.value = !_isEditingProfile!.value,
                      child: Container(
                        width: 26,
                        height: 26,
                        margin: const EdgeInsets.only(right: 5),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ValueListenableBuilder(
                          valueListenable: _isEditingProfile!,
                          builder: (context, value, _) => !value
                              ? SvgPicture.asset(
                                  'assets/icons/profileeditbutton.svg')
                              : SvgPicture.asset('assets/icons/check.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Column(
                          children: [
                            Hero(
                              tag: UserScope.userOf(context).id,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                radius: 158 / 2,
                                child: ClipOval(
                                  child: UserScope.userOf(context)
                                          .avatar
                                          .isNotEmpty
                                      ? Image.asset(
                                          'assets/beer.jpg',
                                          height: 158,
                                          width: 158,
                                          fit: BoxFit.cover,
                                        )
                                      : SvgPicture.asset(
                                          'assets/icons/no_photo.svg',
                                          width: 69,
                                        ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Text(
                              'ID: ${UserScope.userOf(context).id}',
                              style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            ValueListenableBuilder(
                              valueListenable: _isEditingProfile!,
                              builder: (context, value, _) =>
                                  ValueListenableBuilder(
                                valueListenable: _textEditingController,
                                builder: (context, textValue, _) =>
                                    AnimatedContainer(
                                  width: textValue.text.isNotEmpty
                                      ? textValue.text.length * 25
                                      : 100,
                                  duration: const Duration(milliseconds: 200),
                                  decoration: BoxDecoration(
                                    border: value
                                        ? Border.all(
                                            color: textValue.text.length < 15
                                                ? const Color.fromARGB(
                                                    255, 168, 239, 171)
                                                : Colors.red,
                                            width: 1)
                                        : null,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextFormField(
                                    maxLength: 15,
                                    controller: _textEditingController,
                                    readOnly: !value,
                                    textAlign: TextAlign.center,
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: const InputDecoration(
                                        counterText: '',
                                        counter: null,
                                        border: InputBorder.none),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Мудрец",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      snapshot.hasData
                          ? Row(
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
                                      width: 20,
                                      height: 26,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 233, 252, 232),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "${snapshot.data!.list.length}",
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SortButton(
                                  type: SortingTypes.reviews,
                                )
                              ],
                            )
                          : const SizedBox(),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
              ),
              snapshot.hasData
                  ? SliverList.separated(
                      itemCount: snapshot.data!.list.length,
                      itemBuilder: (context, index) {
                        return ReviewTitle(
                          review: snapshot.data!.list[index].review,
                          professor: snapshot.data!.list[index].professor,
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
            ],
          );
        },
      ),
    );
  }
}
