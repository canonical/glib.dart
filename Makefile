ffidir = lib/src/ffi

default: glib gobject macros

glib: $(ffidir)/libglib.yaml
	dart run ffigen --config $(ffidir)/libglib.yaml

gobject: $(ffidir)/libgobject.yaml
	dart run ffigen --config $(ffidir)/libgobject.yaml

macros: $(ffidir)/macros.yaml
	dart run ffigen --config $(ffidir)/macros.yaml
