#include "libft.h"

char *ft_ltoa_base_upper(unsigned long n, int base, int is_upper)
{
    char *digits;
    char *result;
    int len;
    unsigned long temp;

    if (is_upper)
        digits = "0123456789ABCDEF";
    else
        digits = "0123456789abcdef";

    temp = n;
    len = (n == 0) ? 1 : 0;
    while (temp > 0)
    {
        temp /= base;
        len++;
    }
    result = (char *)malloc(len + 1);
    if (!result)
        return (NULL);
    result[len] = '\0';
    while (len > 0)
    {
        result[--len] = digits[n % base];
        n /= base;
    }
    return (result);
}
