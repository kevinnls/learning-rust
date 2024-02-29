OUT_DIR ::= out
RFLAGS = --out-dir $(OUT_DIR)

%:
	make "$(OUT_DIR)/$@"

$(OUT_DIR)/%: %.rs $(OUT_DIR)
	rustc $(RFLAGS) $<

$(OUT_DIR):
	mkdir -p "$@"
