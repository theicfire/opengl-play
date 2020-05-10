COMPILE_FLAGS = -Wall -g
start: first.o glad.o
	clang++ -o start -Iinclude -std=c++11 -stdlib=libc++  -lglfw -framework CoreVideo -framework OpenGL -framework IOKit -framework Cocoa -framework Carbon glad.o first.o

first.o: first.cpp
	clang++ -c $(COMPILE_FLAGS) -Wno-deprecated-declarations -Iinclude -std=c++11 -stdlib=libc++ first.cpp

glad.o: src/glad.c
	clang -c $(COMPILE_FLAGS) -Iinclude -stdlib=libc++ src/glad.c

clean:
	rm -f *.o
	rm -f start

