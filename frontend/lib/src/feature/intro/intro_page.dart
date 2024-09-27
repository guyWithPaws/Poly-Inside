import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<IntroPage> {
  bool checkedValue = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
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
                      'icons/assets/camera.svg',
                      width: 69,
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
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                child: TextField(
                  
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 248, 211),
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 40,
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                title: const Text("Взять ник из телеграма"),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
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
                        onPressed: () {},
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
}

