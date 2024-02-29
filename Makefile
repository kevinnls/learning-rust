OUTDIR ::= out/
RFLAGS = --out-dir $(OUTDIR)

%: %.rs
	rustc $(RFLAGS) $^

