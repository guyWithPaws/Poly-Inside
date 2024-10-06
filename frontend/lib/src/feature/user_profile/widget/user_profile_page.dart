import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:poly_inside/src/common/widgets/review_title.dart';
import 'package:poly_inside/src/feature/initialization/widget/initialization.dart';
import 'package:poly_inside/src/feature/authentication/widget/user_scope.dart';
import 'package:poly_inside/src/feature/user_profile/bloc/data_bloc.dart';

import '../../../common/widgets/sort_button.dart';

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
  DataBLoC? _bloc;

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
    _bloc ??= DataBLoC(repository: InitializationScope.repositoryOf(context))
      ..add(DataRequested(userId: UserScope.userOf(context).id));
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
      body: CustomScrollView(
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
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              radius: 158 / 2,
                              child: ClipOval(
                                child: UserScope.userOf(context)
                                        .avatar
                                        .isNotEmpty
                                    ? Image.memory(
                                        height: 158,
                                        width: 158,
                                        fit: BoxFit.cover,
                                        Uint8List.fromList(
                                            UserScope.userOf(context).avatar),
                                      )
                                    : SvgPicture.asset(
                                        'assets/icons/no_photo.svg',
                                        width: 79,
                                      ),
                              ),
                            ),
                            Positioned(
                              right: 16.36,
                              bottom: 16.36,
                              child: IconButton(
                                icon: const Icon(CupertinoIcons.camera),
                                onPressed: () => showCupertinoModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      const SizedBox(
                                    height: 300,
                                    child: Text('Выбрать аватарку'),
                                  ),
                                ),
                              ),
                            )
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
                            valueListenable: _textEditingController,
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
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Группа:",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '5132704/30003',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<DataBLoC, DataState>(
                    builder: (context, state) => state.maybeWhen(
                      orElse: () => const SizedBox(),
                      loaded: (professors) => Row(
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
                                width: professors.length.toString().length * 15,
                                height: 26,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 233, 252, 232),
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child: Text(
                                    "${professors.length}",
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
                      ),
                    ),
                    bloc: _bloc,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<DataBLoC, DataState>(
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
              loaded: (professors) => SliverList.separated(
                itemCount: professors.length,
                itemBuilder: (context, index) {
                  return ReviewTitle(
                    review: professors[index].review,
                    professor: professors[index].professor,
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              ),
            ),
            bloc: _bloc,
          )
        ],
      ),
    );
  }
}
