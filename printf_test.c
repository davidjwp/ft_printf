/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_test.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: djacobs <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/02 14:04:45 by djacobs           #+#    #+#             */
/*   Updated: 2022/12/03 12:01:11 by djacobs          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

//# include "libft.h"
# include <stdio.h>

#define SPA " "

int	main(int argc, char **argv)
{
	char	*str;

	str = "there";
	printf ("hello %s", str);
	putchar ('\n');
	return (0);
}
