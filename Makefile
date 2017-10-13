INSTALL_DIR=/usr/local
MDLINT_INC=/usr/local/include
ARC=
build: src/emu3d.o
	ar rcs libmdl-emu3d.a src/emu3d.o
	cp libmdl-emu3d.a lib/libmdl-emu3d.a
	cp src/emu3d.hpp inc/mdl

src/emu3d.o: src/emu3d.cpp
	g++ -c -std=c++11 -D__$(ARC) -I$(MDLINT_INC) -o src/emu3d.o src/emu3d.cpp
clean:
	rm -f lib/*.a
	rm -f inc/mdl/*.hpp
	rm -f src/*.o
	rm -f *.a
install:
	mkdir -p $(INSTALL_DIR)/lib
	mkdir -p $(INSTALL_DIR)/include
	mkdir -p $(INSTALL_DIR)/include/mdl
	cp lib/libemu3d.a $(INSTALL_DIR)/lib/libemu3d.a
	cp inc/mdl/emu3d.hpp $(INSTALL_DIR)/include/mdl
uninstall:
	rm -f $(INSTALL_DIR)/lib/libmdl-emu3d.a
	rm -rf $(INSTALL_DIR)/include/mdl
