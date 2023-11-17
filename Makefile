all: clean compile link run

FILES := src/main.cpp

LIBS := -l SDL2main -l SDL2

compile:
	g++ --std=c++17 -g ${FILES} -c
	mv *.o obj/

link:
	g++ obj/* -o main.exe ${LIBS}

clean:
	rm obj/* main.exe

run:
	./main.exe