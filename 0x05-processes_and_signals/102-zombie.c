#include <stdio.h>
#include <unistd.h>

/**
 * main - programa to create 5 process
 *
 * Return: 0 on sucess otherways 1
*/

int infinite_while(void);

int main(void)
{
	int child, i = 0;

	while (i < 5)
	{
		child = fork();
		if (child > 1)
		{
			printf("Zombie process created, PID: %d\n", child);
		}
		else
			return (1);
		i++;
	}
	infinite_while();

	return (0);
}

/**
 * infinite_while - func that contains an infinite loop
 *
 * Return: 0 on sucess
*/

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
