.PHONY: get codegen gen fix precommit

# Get dependencies
precommit:
	@dart format .
	@dart fix --apply

get:
	@dart pub get --directory backend/common
	@dart pub get --directory backend/parser
	@dart pub get --directory backend/server
	@dart pub get --directory frontend
	@dart pub get --directory shared

# Codegeneration
# brew install protobuf
codegen: get
	@dart pub global activate protoc_plugin
	@protoc -I=shared/protobuf --dart_out=grpc:shared/lib/src/protobuf shared/protobuf/service.proto
	@(cd shared && dart run build_runner build --delete-conflicting-outputs)
	@(cd backend\common && dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs)
	@(cd backend\parser && dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs)
	@(cd backend\server && dart run build_runner clean && dart run build_runner build --delete-conflicting-outputs)
	@(cd frontend && dart run build_runner build --delete-conflicting-outputs)
	@dart format .
	@dart fix --apply

# Codegeneration
gen: codegen

# Codefix
fix: get
	@dart fix --apply .
	@dart format --fix -l 60 .

# Build web
build-web:
	@dart compile js -O3 -m --no-source-maps -o frontend/web/main.dart.js frontend/web/main.dart

upgrade-packages:
	@(cd backend\common && dart pub outdated && dart pub upgrade --major-versions)

gen-db-schemas:
	@(cd backend\common && dart run drift_dev schema dump lib/src/database/database.dart db_schemas)
	@(cd backend\common && dart run drift_dev schema steps db_schemas lib/src/database/db_migration.dart)  