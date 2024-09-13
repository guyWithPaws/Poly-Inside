.PHONY: get codegen gen fix

# Get dependencies
get:
	@dart pub get --directory backend
	@dart pub get --directory frontend
	@dart pub get --directory shared

# Codegeneration
# brew install protobuf
codegen: get
	@dart pub global activate protoc_plugin
	@protoc --dart_out=grpc:lib/src/generated service.proto
	@(cd shared && dart run build_runner build --delete-conflicting-outputs)
	@(cd backend && dart run build_runner build --delete-conflicting-outputs)
	@(cd frontend && dart run build_runner build --delete-conflicting-outputs)
	@dart format --fix -l 120 frontend shared backend

# Codegeneration
gen: codegen

# Codefix
fix: get
	@dart fix --apply .
	@dart format --fix -l 120 .

# Build web
build-web:
	@dart compile js -O3 -m --no-source-maps -o frontend/web/main.dart.js frontend/web/main.dart