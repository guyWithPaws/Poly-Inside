import 'package:flutter/material.dart';

/// {@template home_page}
/// HomePage widget.
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({
    super.key, // ignore: unused_element
  });

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
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(320.0),
                      child: Image.asset(
                        fit: BoxFit.fill,
                        height: 62,
                        width: 62,
                        'beer.jpg',
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const SizedBox(
                      width: 287,
                      height: 50,
                      child: SearchBar(
                        hintText: 'Найти преподавателя',
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Преподаватели')),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView.separated(
                      itemCount: 20,
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 25,
                          ),
                      itemBuilder: (context, index) {
                        return Container(
                            width: 360,
                            height: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFFEEF9EF)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(320.0),
                                    child: Image.asset(
                                      fit: BoxFit.fill,
                                      height: 54,
                                      width: 54,
                                      'beer.jpg',
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Руль Николай Игоревич'),
                                      SizedBox(
                                        width: 300,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                                Icon(Icons.star),
                                                Text(' 5.0'),
                                              ],
                                            ),
                                            Text('6 отзывов')
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ));
                      }),
                )
              ],
            )),
      ),
    );
  }
}