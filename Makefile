# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivarosic <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/23 11:53:40 by ivarosic          #+#    #+#              #
#    Updated: 2021/01/23 15:34:34 by ivarosic         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME = libasm

NAME_LIB = libasm.a

SRCS = 	ft_strlen.s \
		ft_strcpy.s	\
		ft_strcmp.s	\

CC = gcc

CFLAGS = -Wall -Wextra -Werror

NASM = nasm

NASMFLAGS = -f macho64

OBJ = $(SRCS:.s=.o)

%.o : %.s
	$(NASM) $(NASMFLAGS) $< -o $@

all : $(NAME)

$(NAME) : $(OBJ)
	ar rc $(NAME_LIB) $(OBJ)

comp :
	$(CC) $(CFLAGS) $(NAME_LIB) main.c
	
clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME_LIB)
	rm -f ./a.out

re : fclean all
