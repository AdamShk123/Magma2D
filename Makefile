build: clean compile link

FILES := src/main.cpp src/vk_engine.cpp

LIBS := -l SDL2main -l SDL2 -l vulkan -l fmt

clean:
	rm obj/* magma

compile:
	g++ --std=c++20 -g ${FILES} -c
	mv *.o obj/

link:
	g++ obj/*.o -o magma ${LIBS}

run:
	./magma
