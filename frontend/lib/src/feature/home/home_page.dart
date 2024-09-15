import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc_web.dart';
import 'package:poly_inside/src/common/repository/client.dart';
import 'package:poly_inside/src/common/repository/client_impl.dart';
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

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    repository = ClientRepositoryImpl(
      client: SearchServiceClient(
          GrpcWebClientChannel.xhr(Uri.parse('http://87.228.18.201:8080'))),
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
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
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
                    const SizedBox(
                      width: 30,
                    ),
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
                  child: StreamBuilder<GetListProfessorResponse>(
                    stream: repository?.getAllProfessors(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: Text(
                            'Nothing to show...',
                          ),
                        );
                      }
                      if (snapshot.data?.professors.isEmpty ?? true) {
                        return const Center(
                          child: Text(
                            'Nothing to show...',
                          ),
                        );
                      }
                      return ListView.separated(
                        itemCount: snapshot.data?.professors.length ?? 0,
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
                                  CircleAvatar(
                                    radius: 27,
                                    child: ClipOval(
                                      child: CachedNetworkImage(
                                        height: 54,
                                        width: 54,
                                        errorWidget: (_, __, ___) =>
                                            const ColoredBox(
                                                color: Colors.grey),
                                        imageUrl: snapshot.data
                                                ?.professors[index].avatar ??
                                            '',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data?.professors[index].name ??
                                            '',
                                        style: const TextStyle(
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                      const Row(
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
                                          Align(
                                            child: Text('6 отзывов'),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
