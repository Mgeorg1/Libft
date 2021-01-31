/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aemustaf <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/31 18:28:05 by aemustaf          #+#    #+#             */
/*   Updated: 2020/11/13 21:12:29 by aemustaf         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

char	*ft_strchr(const char *s, int c)
{
	char *s1;

	s1 = (char*)s;
	if (c == 0)
	{
		while (*s1)
			s1++;
		return (s1);
	}
	while (*s1)
	{
		if (*s1 == c)
			return (s1);
		s1++;
	}
	return (NULL);
}
