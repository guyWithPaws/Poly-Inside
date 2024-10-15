import 'package:grpc/grpc.dart';

ClientChannel getChannel() {
  return ClientChannel(
    '127.0.0.1',
    port: 9090,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}
