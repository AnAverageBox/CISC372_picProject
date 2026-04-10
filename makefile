image_pthread:image_pthread.c image.h
	gcc image_pthread.c -o image_pthread -lm -lthread

image_omp:image_omp.c image.h
	gcc image_omp.c -o image_omp -fopenmp

image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png
	rm -f image_pthread output.png
	rm -f image_omp output.png