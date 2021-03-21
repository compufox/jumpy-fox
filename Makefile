BUILD_CMDS := --eval "(ql:quickload '(:trivial-gamekit/distribution :jumpy-fox))" --eval "(gamekit.distribution:deliver :jumpy-fox 'jumpy-fox::jumpy-fox :build-directory \"build/\")" --eval "(quit)"

all: clean build 

build:
	ros $(BUILD_CMDS)

clean:
	@-rm -rf build/
