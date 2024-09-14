import 'package:grpc/grpc.dart';
import 'package:shared/shared.dart';

void main(List<String> args) async{
  final client = SearchServiceClient(
    ClientChannel(
      '87.228.18.201',
      port: 8080,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    ),
  );
  final data = client.getListProfessor(ListProfessorRequest());
  data.forEach(print);
}
