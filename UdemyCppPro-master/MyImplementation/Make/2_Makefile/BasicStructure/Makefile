build:
	#create from the listed files an object
	# g++ main.cc  -c
	# g++ my_lib.cc -c

	#create from the main.o data an executable named as main
	g++ main.o my_lib.o -o main

main.o:
	g++ main.cc -c

my_lib.o:
	g++ my_lib.cc -c

execute:
	./main #execute main executable

clean:
	rm -f *.o	#	Clean everything with an ending .object
	rm -f main #	Clean the main executable
