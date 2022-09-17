.PHONY: init check build release

init:
	git submodule update --recursive --init

check:
	cd rust/rungame_sample_rust && cargo check

build:
	cd rust/rungame_sample_rust && cargo build
	cp -f rust/rungame_sample_rust/target/debug/librungame_sample_rust.dylib godot/plugins/librungame_sample_rust.dylib

release:
	cd rust/rungame_sample_rust && cargo build --release
	cp -f rust/rungame_sample_rust/target/release/librungame_sample_rust.dylib godot/plugins/librungame_sample_rust.dylib
