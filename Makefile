DESTDIR=/usr/local

build: src/emu3d.o
	ar rcs src/libemu3d.a src/emu3d.o
	cp src/libemu3d.a lib/libemu3d.a
	cp src/emu3d.hpp inc/emu3d.hpp

src/emu3d.o: src/emu3d.cpp
	g++ -c -std=c++11 -o src/emu3d.o src/emu3d.cpp 
clean:
	rm -f lib/*.a
	rm -f inc/*.hpp
	rm -f src/*.o
	rm -f src/*.a
install:
	mkdir -p $(DESTDIR)/bin
	mkdir -p $(DESTDIR)/lib
	mkdir -p $(DESTDIR)/include
	cp lib/libemu3d.a $(DESTDIR)/lib/libemu3d.a
	cp inc/emu3d.hpp $(DESTDIR)/inc/emu3d.hpp
uninstall:
	rm -f $(DESTDIR)/lib/libemu3d.a
	rm -f $(DESTDIR)/inc/emu3d.hpp
