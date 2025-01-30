import 'package:grpc/grpc_web.dart';
import 'package:grpc/service_api.dart';

ClientChannel getChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      'http://127.0.0.1/',
    ),
  );
}

ClientChannel getLocalhostChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      'http://127.0.0.1/api/',
    ),
  );
}
