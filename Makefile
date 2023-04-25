# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mde-sa-- <mde-sa--@student.42porto.com     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/15 19:59:42 by mde-sa--          #+#    #+#              #
#    Updated: 2023/04/19 11:13:08 by mde-sa--         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a

CC		=	cc

FLAGS	=	-Wall -Wextra -Werror

SRC		=	ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_memchr.c \
			ft_memcmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c \
			ft_strrchr.c ft_strnstr.c ft_strncmp.c ft_atoi.c ft_isalpha.c \
			ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c \
			ft_tolower.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
			ft_strtrim.c ft_split.c ft_itoa.c ft_striteri.c ft_strmapi.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

SRCBON	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
			ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c \
			ft_lstmap.c

OBJ		=	${SRC:.c=.o}

OBJBON	=	${SRCBON:.c=.o}

RM		=	rm -f

.c.o:
	${CC} ${FLAGS} -c $< -I . -o $@

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

all: $(NAME)

bonus: ${OBJBON}
	ar -rcs ${NAME} ${OBJBON}

clean:
	rm -rf $(OBJ) $(OBJBON)

fclean: clean
	rm -rf $(NAME)

re: fclean all
