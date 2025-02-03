import 'package:grpc/grpc_web.dart';
import 'package:grpc/service_api.dart';

ClientChannel getChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      'http://185.50.202.148:8080',
    ),
  );
}

ClientChannel getLocalhostChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      'http://127.0.0.1:8080',
    ),
  );
}
