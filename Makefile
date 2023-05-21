# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anda-cun <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/25 19:33:05 by anda-cun          #+#    #+#              #
#    Updated: 2023/05/05 12:36:18 by anda-cun         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS =	ft_printf.c\
		ft_putchar.c\
		ft_putstr.c\
		ft_putnbr.c\
		ft_putunbr.c\
		ft_ptr.c\
		
OBJS = $(SRCS:.c=.o)

CC = cc

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	ar -crs $(NAME) $(OBJS)

$(OBJS):
	$(CC) $(CFLAGS) -c $(SRCS) 

re: fclean all

clean: 
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

.PHONY: all, re, clean, fclean
