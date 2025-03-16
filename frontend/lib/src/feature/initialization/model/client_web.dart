import 'package:grpc/grpc_web.dart';
import 'package:grpc/service_api.dart';

ClientChannel getChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      'https://infinite-cow-hip.ngrok-free.app/api',
    ),
  );
}

ClientChannel getLocalhostChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      'http://localhost:8080/api/',
    ),
  );
}
