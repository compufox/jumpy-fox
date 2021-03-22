LISPS = ros sbcl ccl
BUILD_CMDS := --eval "(ql:quickload '(:trivial-gamekit/distribution :jumpy-fox))" --eval "(gamekit.distribution:deliver :jumpy-fox 'jumpy-fox::jumpy-fox :build-directory \"build/\")" --eval "(quit)"

ifeq ($(OS),Windows_NT)
	LISP := $(foreach lisp,$(LISPS), \
		$(shell where $(lisp)) \
		$(if $(.SHELLSTATUS),$(strip $(lisp)),))
else
	LISP := $(foreach lisp,$(LISPS), \
		$(if $(findstring $(lisp),"$(shell which $(lisp) 2>/dev/null)"), $(strip $(lisp)),))
endif

ifeq ($(LISP),)
	$(error "No lisps found")
endif


all: clean build 

build:
	$(LISP) $(BUILD_CMDS)

clean:
	ifeq ($(OS),Windows_NT)
		@-rmdir /Q /S build/
	else
		@-rm -rf build/
	endif
