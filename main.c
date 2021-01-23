/* ************************************************************************** */
/*                                                          LE - /            */
/*                                                              /             */
/*   main.c                                           .::    .:/ .      .::   */
/*                                                 +:+:+   +:    +:  +:+:+    */
/*   By: ivanrosic <ivanrosic@student.le-101>       +:+   +:    +:    +:+     */
/*                                                 #+#   #+    #+    #+#      */
/*   Created: 2021/01/23 02:25:56 by ivanrosic     #+#   ##    ##    #+#       */
/*   Updated: 2021/01/23 16:30:08 by ivarosic         ###   ########lyon.fr   */
/*                                                         /                  */
/*                                                        /                   */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char dest[20] = "dest";
	printf("ft_strlen:\n");
	printf("ft:%zd\n",ft_strlen("test\n"));
	printf("o :%zd\n",strlen("test\n"));
	printf("ft_strcpy:\n");
	printf("ft:%s\n",ft_strcpy(dest, "sriiic"));
	printf("o :%s\n",strcpy(dest, "sriiic"));
	printf("ft_strcmp:\n");
	printf("ft:%d\n",ft_strcpy("dest", "dest"));
	printf("o :%d\n",strcpy("dest", "dest"));

	return(0);
}
