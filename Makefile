# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: saolivei <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/11 11:04:11 by saolivei          #+#    #+#              #
#    Updated: 2018/07/11 11:04:14 by saolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libft.a

SRCS += *.c

OP += *.o

.PHONY:
	clean fclean re

all: $(NAME)

$(NAME): $(SRCS)
	gcc -Wall -Wextra -Werror -c $(SRCS)
	ar rc $(NAME) $(OP)
	ranlib $(NAME)

clean: 
	/bin/rm -f $(OP)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

