default: ffigen macros

ffigen:
	dart run ffigen --config lib/src/ffi/ffigen.yaml

macros:
	dart run ffigen --config lib/src/ffi/macros.yaml
