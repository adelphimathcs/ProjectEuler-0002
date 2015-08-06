#include <stdio.h>

int main(int argc, const char *argv[])
{	
	int sum = 0;
	int i = 0;
	int res;
	do {
		sum+=fib(i);
		printf("Term %d = %d\n", i, fib(i));
		i+=3; //The sequence alternates even-odd-odd
	} while(fib(i) <= 4000000);
	printf("%d\n", sum);
	return 0;

}


int fib(int n){
	return n <= 1 ? n : (fib(n-1) + fib(n-2))
}
