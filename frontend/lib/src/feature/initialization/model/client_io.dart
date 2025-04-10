import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';

ClientChannel getChannel() {
  return ClientChannel(
    dotenv.get('SERVER_IP'),
    port: dotenv.getInt('SERVER_PORT'),
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}

ClientChannel getLocalhostChannel() {
  return ClientChannel(
    '10.0.2.2',
    port: dotenv.getInt('SERVER_PORT'),
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}
