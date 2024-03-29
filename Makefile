.PHONY: clean build

build: clean
	cmake -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
	-DBUILD_EXAMPLES=ON \
	-DCMAKE_BUILD_TYPE=Debug .
	cmake --build build

clean:
	rm -rf build install

install:
	cmake --install build --prefix ./install

run:
	./build/bin/${cmd}
