import 'dart:typed_data';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/feature/initialization/widget/initialization.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';
import 'package:poly_inside/src/feature/user_profile/bloc/data_bloc.dart';
import 'package:shared/shared.dart';

import '../../../common/enums/sorting_type.dart';
import '../../../common/widgets/sort_button.dart';

class ProfilePage extends StatefulWidget {
  final ProfileDataBLoC? bloc;

  /// {@macro profile_page}
  const ProfilePage(
      {super.key, // ignore: unused_element
      required this.bloc});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ScrollController? _scrollController;
  ValueNotifier<bool>? _valueNotifier;
  ValueNotifier<bool>? _isEditingProfile;
  ValueNotifier<int>? _sortingValueNotifier;
  TextEditingController? _textEditingController;

  static const Duration scrollDuration = Duration(milliseconds: 500);

  /* #region Lifecycle */
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController?.addListener(scrollListener);

    _textEditingController = TextEditingController();

    _valueNotifier = ValueNotifier(false);
    _isEditingProfile = ValueNotifier(false);
    _sortingValueNotifier = ValueNotifier(0);

    super.initState();
    // Initial state initialization
  }

  void scrollListener() {
    if (_scrollController?.position.pixels ==
            _scrollController?.position.minScrollExtent ||
        _scrollController!.position.pixels ==
            (_scrollController!.position.maxScrollExtent)) {
      _valueNotifier?.value = false;
    } else {
      _valueNotifier?.value = true;
    }
  }

  @override
  void didChangeDependencies() {
    _textEditingController!.text = UserScope.userOf(context).name;
    // _bloc ??=
    //     ProfileDataBLoC(repository: InitializationScope.repositoryOf(context))
    //       ..add(ProfileDataRequested(userId: UserScope.userOf(context).id));
    super.didChangeDependencies();
  }

  Future<void> _pickImage(BuildContext context) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    _valueNotifier?.dispose();
    _textEditingController?.dispose();
    // _bloc?.close();
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible: _valueNotifier!.value,
        child: FloatingActionButton.extended(
          onPressed: () {
            _scrollController?.animateTo(0,
                duration: scrollDuration, curve: Curves.easeInOut);
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
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
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
                  onTap: () async {
                    _isEditingProfile!.value = !_isEditingProfile!.value;
                    if (!_isEditingProfile!.value) {
                      await InitializationScope.repositoryOf(context)
                          .updateUser(
                        User(
                          id: UserScope.userOf(context).id,
                          name: _textEditingController!.text,
                        ),
                      );
                    }
                  },
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
                        Stack(
                          children: [
                            Hero(
                              tag: UserScope.userOf(context).id,
                              child: CircleAvatar(
                                  backgroundColor: Colors.grey[200],
                                  radius: 158 / 2,
                                  backgroundImage: MemoryImage(
                                    Uint8List.fromList(
                                      UserScope.userOf(context).avatar,
                                    ),
                                  ),
                                  child:
                                      UserScope.userOf(context).avatar.isEmpty
                                          ? SvgPicture.asset(
                                              'assets/icons/no_photo.svg',
                                              width: 79,
                                            )
                                          : null),
                            ),
                            Positioned(
                              right: 10.36,
                              bottom: 10.36,
                              child: IconButton(
                                icon: const Icon(CupertinoIcons.camera),
                                onPressed: () => showCupertinoModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) => SizedBox(
                                    height: 300,
                                    child: Column(
                                      children: [
                                        const Text('Выбрать фото'),
                                        const SizedBox(height: 20),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            _pickImage(context);
                                          },
                                          child:
                                              const Text('Выбрать из галереи'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                            valueListenable: _textEditingController!,
                            builder: (context, textValue, _) =>
                                AnimatedContainer(
                              width: textValue.text.isNotEmpty &&
                                      textValue.text.length * 30 > 100
                                  ? textValue.text.length * 30
                                  : 100,
                              height: 50,
                              duration: const Duration(milliseconds: 350),
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
                              child: Center(
                                child: SizedBox(
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
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () => showCupertinoModalBottomSheet(
                            context: context,
                            builder: (context) => SizedBox(
                              height: MediaQuery.of(context).size.height - 100,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Группа:",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 2),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green[50]),
                                child: Text(
                                  UserScope.userOf(context).group,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<ProfileDataBLoC, ProfileDataState>(
                    builder: (context, state) => state.maybeWhen(
                      orElse: () => const SizedBox(),
                      loaded: (professors) => professors.isNotEmpty
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Мои отзывы",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      width: professors.isNotEmpty
                                          ? professors.length
                                                  .toString()
                                                  .length *
                                              20
                                          : 30,
                                      height: 26,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 233, 252, 232),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Center(
                                        child: AnimatedFlipCounter(
                                          value: professors.length,
                                          duration:
                                              const Duration(milliseconds: 200),
                                          textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SortButton(
                                  valueNotifier: _sortingValueNotifier,
                                  type: SortingType.reviews,
                                )
                              ],
                            )
                          : const SizedBox(),
                    ),
                    bloc: widget.bloc,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<ProfileDataBLoC, ProfileDataState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const Center(
                      child: Text('Нет данных'),
                    )
                  ],
                ),
              ),
              loaded: (professors) => ValueListenableBuilder(
                valueListenable: _sortingValueNotifier!,
                builder: (context, value, _) {
                  var sorted = professors.toList();

                  switch (_sortingValueNotifier!.value) {
                    case 0:
                      sorted.sort(
                          (a, b) => a.review.date.compareTo(b.review.date));
                      sorted = sorted.reversed.toList();
                      break;
                    case 1:
                      sorted.sort(
                          (a, b) => a.review.date.compareTo(b.review.date));
                      break;
                    case 2:
                      sorted.sort(
                          (a, b) => a.review.likes.compareTo(b.review.likes));
                      sorted = sorted.reversed.toList();
                      break;
                    case 3:
                      sorted.sort(
                          (a, b) => a.review.likes.compareTo(b.review.likes));

                      break;
                  }
                  return SliverList.separated(
                    itemCount: professors.length,
                    itemBuilder: (context, index) {
                      return ReviewTitle(
                        review: sorted[index].review,
                        professor: sorted[index].professor,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                  );
                },
              ),
            ),
            bloc: widget.bloc,
          )
        ],
      ),
    );
  }
}
