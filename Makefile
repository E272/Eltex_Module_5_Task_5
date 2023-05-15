obj-m += kernal_space.o
 
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	gcc -o user_space user_space.c
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm user_space
