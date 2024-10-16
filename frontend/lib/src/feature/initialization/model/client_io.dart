import 'package:grpc/grpc.dart';

ClientChannel getChannel() {
  return ClientChannel(
    '213.171.31.11',
    port: 9090,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}
