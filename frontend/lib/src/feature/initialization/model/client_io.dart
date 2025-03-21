import 'package:grpc/grpc.dart';

ClientChannel getChannel() {
  return ClientChannel(
    '213.171.31.11',
    port: 8080,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}

ClientChannel getLocalhostChannel() {
  return ClientChannel(
    '127.0.0.1',
    port: 8080,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}
