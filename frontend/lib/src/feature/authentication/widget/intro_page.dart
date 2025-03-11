import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poly_inside/src/feature/authentication/bloc/user_bloc.dart';
import 'package:shared/shared.dart';

import '../../initialization/widget/initialization.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key, required this.bloc});

  final UserBloc? bloc;

  @override
  State<IntroPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IntroPage> {
  TextEditingController? _userNameController;
  TextEditingController? _userGroupController;
  bool checkedValue = false;
  bool value = false;
  UserBloc? _bloc;

  void _listener() {
    _bloc?.add(GroupTextFieldChanged(group: _userGroupController!.text));
  }

  @override
  void initState() {
    _userNameController = TextEditingController();
    _userGroupController = TextEditingController();

    _userGroupController?.addListener(_listener);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    _bloc ??= UserBloc(
      repository: InitializationScope.repositoryOf(context),
      state: const UserState.idle(),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 49,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  radius: 158 / 2,
                  child: ClipOval(
                    child: SvgPicture.asset(
                      'assets/icons/no_photo.svg',
                      width: 80,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              const Text(
                'Введите свое имя',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 248, 211),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 50,
                child: TextField(
                  controller: _userNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              CheckboxListTile(
                title: const Text(
                  "взять ник из телеграма",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(
                      255,
                      138,
                      138,
                      138,
                    ),
                  ),
                ),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const Text(
                'Введите номер группы',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 248, 211),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 50,
                child: TextField(
                  controller: _userGroupController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<UserBloc, UserState>(
                    bloc: _bloc,
                    builder: (context, state) {
                      return state.when(
                          processing: (String stage) => const SizedBox(),
                          idle: () => const SizedBox(),
                          notAuthorized: () => const SizedBox(),
                          error: (Object e) => const SizedBox(),
                          loaded: (User user) => const SizedBox(),
                          groupLoaded: (List<GroupNumber> groups) {
                            return ListView.builder(
                                itemCount: groups.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      _userGroupController?.text =
                                          groups[index].number;
                                    },
                                    child: ListTile(
                                      title: Text(groups[index].number),
                                    ),
                                  );
                                });
                          });
                    }),
              ),
              const Spacer(),
              CheckboxListTile(
                title: const Text(
                    "Нажимая на галочку, вы соглашаетесь с условиями пользования приложения"),
                value: value,
                onChanged: (nValue) {
                  setState(() {
                    value = nValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 210, 248, 211),
                    ),
                    margin: const EdgeInsets.only(bottom: 33, right: 3),
                    width: 197,
                    height: 64,
                    child: TextButton(
                      onPressed: () {
                        widget.bloc?.add(
                          AuthenticationRequested(
                            name: _userNameController!.text,
                          ),
                        );
                      },
                      child: const Text(
                        'Сохранить',
                        style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _userNameController?.dispose();
    super.dispose();
  }
}
