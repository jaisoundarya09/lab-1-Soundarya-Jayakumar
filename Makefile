SRC=TestVector.cool Vector.cool

all : test

TestVector.s:
	coolc -o TestVector.s ${SRC}

test: TestVector.s
	coolspim $<

clean:
	rm -f *.s

.PHONY: test
.PHONY: clean
