default: gen lint

gen:
    flutter_rust_bridge_codegen \
        --rust-input "native/src/api_discover.rs" "native/src/api_extratest.rs" \
        --dart-output "lib/native/bridge_generated_api_discover.dart" "lib/native/bridge_generated_api_extratest.dart" \
        --rust-output "native/src/generated_api_discover.rs" "native/src/generated_api_extratest.rs" \
        --c-output "macos/Runner/bridge_generated.h" \
        --class-name ApiDiscover ApiExtratest

lint:
    cd native && cargo fmt
    dart format .

check:
    flutter pub get
    cd native && cargo check

clean:
    flutter clean
    cd native && cargo clean

upgrade:
    flutter pub upgrade
    cd native && cargo update