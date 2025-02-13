.PHONY: format get outdated test publish deploy coverage analyze check pana

format:
	@echo "Formatting the code"
	@dart format -l 80 --fix .
	@dart fix --apply .

get:
	@dart pub get

outdated:
	@dart pub outdated --show-all --dev-dependencies --dependency-overrides --transitive --no-prereleases


analyze: get format
	@echo "Analyze the code"
	@dart analyze --fatal-infos --fatal-warnings

client:
	@dart compile exe bin/client.dart
	@./bin/client.exe

server:
	@dart compile exe bin/server.dart
	@./bin/server.exe

codegen:
	@protoc --dart_out=grpc:lib/generated protobufs/service.proto
	@dart run build_runner build

docker:
	