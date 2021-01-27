/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   main.c                                           .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: ivanrosic <ivanrosic@student.le-101>       +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2021/01/23 02:25:56 by ivanrosic     #+#   ##    ##    #+#       */
/*   Updated: 2021/01/27 03:04:50 by ivanrosic    ###    #+. /#+    ###.fr     */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char dest[20] = "dest";
	char dest1[20] = "dest";
	printf("ft_strlen:\n");
	printf("ft:%zd\n",ft_strlen("test\n"));
	printf("o :%zd\n",strlen("test\n"));
	printf("ft_strcpy:\n");
	printf("ft:%s\n",ft_strcpy(dest, "salut"));
	printf("o :%s\n",strcpy(dest1, "salut"));
	printf("ft_strcmp:\n");
	printf("o :%d\n",strcmp("f", "f"));
	printf("ft:%d\n",ft_strcmp("f", "f"));
	printf("o :%zd\n",write(1,"f", 1));
	printf("ft:%zd\n",ft_write(1,"f", 1));

	return(0);
}
