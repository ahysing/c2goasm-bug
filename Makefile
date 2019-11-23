test: build
	go test . -test.v

build:
	clang -S -O3 -mavx2 -masm=intel -mno-red-zone -mstackrealign -mllvm -inline-threshold=1000 -fno-asynchronous-unwind-tables -fno-exceptions -fno-rtti     -c stats_nocgo.c -o stats_intermediate.s
	c2goasm stats_intermediate.s stats_nocgo.s
	CGO_ENABLED=0 go build .

help:
	@echo "make build"
	@echo "make test"
	@echo " "
	@echo "when you are done do"
	@echo "make clean"

clean:
	rm stats_nocgo.s

