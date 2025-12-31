all:
	rm -rf build/
	jpm build
	./build/rethread-home
