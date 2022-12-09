# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: djacobs <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/16 12:34:33 by djacobs           #+#    #+#              #
#    Updated: 2022/12/07 15:21:57 by djacobs          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

TEST_SRCS		= $(shell TESTS/*.c)

OBJS			= $(SRCS:.c=.o)
CC		= gcc
CFLAGS		= -Wall -Wextra -Werror

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $@ $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

tests:
	$(CC) $(CFLAGS) $(TEST_SRCS) -o $@ && ./$@
	clean