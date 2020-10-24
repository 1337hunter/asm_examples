#include <stdlib.h>
void	ft_putchar(char ch);
short	ft_putstr(char *s);
#include <stdio.h>

typedef struct		s_list
{
	void		*data; // rdi [rdi]
	struct s_list 	*next; // [rdi + 8]
}			t_list;

int	main(void)
{
	ft_putchar('A');
	printf("%ld\n", ft_putstr("Hello world\n"));
	return (0);
}
