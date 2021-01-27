/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   main.c                                           .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: ivanrosic <ivanrosic@student.le-101>       +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2021/01/23 02:25:56 by ivanrosic     #+#   ##    ##    #+#       */
/*   Updated: 2021/01/27 16:41:47 by ivarosic         ###   ########lyon.fr   */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char dest[20] = "dest";
	char dest1[20] = "dest";
	char str[20] = "test de write\n";
	printf("ft_strlen:\n");
	printf("ft:%zd\n",ft_strlen("test\n"));
	printf("o :%zd\n",strlen("test\n"));
	printf("ft_strcpy:\n");
	printf("ft:%s\n",ft_strcpy(dest, "salut"));
	printf("o :%s\n",strcpy(dest1, "salut"));
	printf("ft_strcmp:\n");
	printf("o :%d\n",strcmp("f", "f"));
	printf("ft:%d\n",ft_strcmp("f", "f"));
	printf("o :%zd\n",write(1,str, strlen(str)));
	printf("ft:%zd\n",ft_write(1,str, ft_strlen(str)));
	printf("ft_strdup:\n");
	printf("ft:%d\n",ft_strdup("test"));

	return(0);
}
