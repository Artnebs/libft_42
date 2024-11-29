# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anebbou <anebbou@student42.fr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/06 14:27:24 by anebbou           #+#    #+#              #
#    Updated: 2024/11/29 17:10:03 by anebbou          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Nom de la bibliothèque
NAME = libft.a

# Commandes de compilation
CC = gcc
CFLAGS = -Wall -Wextra -Werror

# Répertoires
INCLUDES = includes
LIBFT_DIR = srcs/libft
PRINTF_DIR = srcs/ft_printf
GNL_DIR = srcs/get_next_line

# Fichiers sources listés manuellement
LIBFT_SRCS = $(LIBFT_DIR)/ft_isalpha.c \
			 $(LIBFT_DIR)/ft_isdigit.c \
			 $(LIBFT_DIR)/ft_isalnum.c \
			 $(LIBFT_DIR)/ft_strlen.c \
			 $(LIBFT_DIR)/ft_strdup.c \
			 $(LIBFT_DIR)/ft_memset.c \
			 $(LIBFT_DIR)/ft_bzero.c \
			 $(LIBFT_DIR)/ft_memcpy.c \
			 $(LIBFT_DIR)/ft_memmove.c \
			 $(LIBFT_DIR)/ft_strchr.c \
			 $(LIBFT_DIR)/ft_strrchr.c \
			 $(LIBFT_DIR)/ft_strncmp.c \
			 $(LIBFT_DIR)/ft_memcmp.c \
			 $(LIBFT_DIR)/ft_atoi.c \
			 $(LIBFT_DIR)/ft_itoa.c \
			 $(LIBFT_DIR)/ft_split.c \
			 $(LIBFT_DIR)/ft_isascii.c \
			 $(LIBFT_DIR)/ft_isprint.c \
			 $(LIBFT_DIR)/ft_toupper.c \
			 $(LIBFT_DIR)/ft_tolower.c \
			 $(LIBFT_DIR)/ft_strlcpy.c \
			 $(LIBFT_DIR)/ft_strlcat.c \
			 $(LIBFT_DIR)/ft_strnstr.c \
			 $(LIBFT_DIR)/ft_memchr.c \
			 $(LIBFT_DIR)/ft_calloc.c \
			 $(LIBFT_DIR)/ft_substr.c \
			 $(LIBFT_DIR)/ft_strjoin.c \
			 $(LIBFT_DIR)/ft_strtrim.c \
			 $(LIBFT_DIR)/ft_strmapi.c \
			 $(LIBFT_DIR)/ft_striteri.c \
			 $(LIBFT_DIR)/ft_putchar_fd.c \
			 $(LIBFT_DIR)/ft_putstr_fd.c \
			 $(LIBFT_DIR)/ft_putendl_fd.c \
			 $(LIBFT_DIR)/ft_putnbr_fd.c \
			 $(LIBFT_DIR)/ft_utoa.c \
			 $(LIBFT_DIR)/ft_ltoa.c \
			 $(LIBFT_DIR)/ft_isupper.c \
			 $(LIBFT_DIR)/ft_islower.c \
			 $(LIBFT_DIR)/ft_ltoa_base.c \
			 $(LIBFT_DIR)/ft_ltoa_base_upper.c \
			 $(LIBFT_DIR)/ft_lstnew.c \
			 $(LIBFT_DIR)/ft_lstadd_front.c \
			 $(LIBFT_DIR)/ft_lstsize.c \
			 $(LIBFT_DIR)/ft_lstlast.c \
			 $(LIBFT_DIR)/ft_lstadd_back.c \
			 $(LIBFT_DIR)/ft_lstdelone.c \
			 $(LIBFT_DIR)/ft_lstclear.c \
			 $(LIBFT_DIR)/ft_lstiter.c \
			 $(LIBFT_DIR)/ft_lstmap.c

PRINTF_SRCS = $(PRINTF_DIR)/ft_printf.c \
			  $(PRINTF_DIR)/ft_printf_char_str.c \
			  $(PRINTF_DIR)/ft_printf_numbers.c \
			  $(PRINTF_DIR)/ft_printf_utils.c

GNL_SRCS = $(GNL_DIR)/get_next_line.c \
		   $(GNL_DIR)/get_next_line_utils.c

# Tous les fichiers sources et objets
SRCS = $(LIBFT_SRCS) $(PRINTF_SRCS) $(GNL_SRCS)
OBJS = $(SRCS:.c=.o)

# Règles
all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
	@echo "$(NAME) créé avec succès !"

%.o: %.c
	$(CC) $(CFLAGS) -I$(INCLUDES) -c $< -o $@
	@echo "Compilation de $< terminée."

clean:
	rm -f $(OBJS)
	@echo "Fichiers objets supprimés."

fclean: clean
	rm -f $(NAME)
	@echo "$(NAME) supprimé."

re: fclean all

.PHONY: all clean fclean re
