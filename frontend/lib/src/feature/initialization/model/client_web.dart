import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc_web.dart';
import 'package:grpc/service_api.dart';

ClientChannel getChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      dotenv.get('API_URL'),
    ),
  );
}

ClientChannel getLocalhostChannel() {
  return GrpcWebClientChannel.xhr(
    Uri.parse(
      dotenv.get('LOCAL_API_URL'),
    ),
  );
}
