run: first.o glad.o
	clang++ -o run -Iinclude -std=c++11 -stdlib=libc++ -lglfw -framework CoreVideo -framework OpenGL -framework IOKit -framework Cocoa -framework Carbon glad.o first.o

first.o:
	clang++ -c -Iinclude -std=c++11 -stdlib=libc++ first.cpp

glad.o:
	clang -c -Iinclude -stdlib=libc++ src/glad.c


clean:
	rm -f *.o
	rm -f run

