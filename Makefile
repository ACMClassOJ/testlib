CXX = g++
CXXFLAGS = -O2 -DONLINE_JUDGE -std=c++20

PREFIX = /usr/local

testlib.h.gch: testlib.h
	$(CXX) $(CXXFLAGS) $^

.PHONY: install
install: testlib.h testlib.h.gch
	install -Dm644 $^ $(PREFIX)/include/

.PHONY: uninstall
uninstall:
	rm -f $(PREFIX)/include/testlib.h $(PREFIX)/include/testlib.h.gch
