/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ltoa_base.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: anebbou <anebbou@student42.fr>             +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/12 11:11:38 by anebbou           #+#    #+#             */
/*   Updated: 2024/11/12 11:58:20 by anebbou          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
// convert a long to a string in a specific base - free after use
char	*ft_ltoa_base(unsigned long n, int base, int is_upper)
{
	char	*digits;
	char	buffer[65];
	int		i;

	if (is_upper)
		digits = "0123456789ABCDEF";
	else
		digits = "0123456789abcdef";
	i = 63;
	buffer[64] = '\0';
	if (n == 0)
	{
		buffer[i] = '0';
		i--;
	}
	else
	{
		while (n > 0)
		{
			buffer[i] = digits[n % base];
			n /= base;
			i--;
		}
	}
	return (ft_strdup(&buffer[i + 1]));
}