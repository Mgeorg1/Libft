SRCS	=	ft_atoi.c \
			ft_bzero.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_itoa.c \
			ft_memccpy.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memset.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_putstr_fd.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_strjoin.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strchr.c \
			ft_strtrim.c \
			ft_substr.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_calloc.c \
			ft_strrchr.c \
			ft_split.c \
			ft_strmapi.c \

SRCS_B	=	ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c \

NAME	=	libft.a

OBJS	=	${SRCS:.c=.o}

OBJS_B	=	${SRCS_B:.c=.o}

CC		=	gcc

RM		=	rm -f

CFLAGS	=	-Wall -Wextra -Werror

.PHONY:  all clean fclean re

all:		${NAME}

${NAME}:	${OBJS}
			@ar rc ${NAME} ${OBJS}
			@ranlib ${NAME}

c.o:
	${CC} ${CFLAGS} -c -I libft.h $< -o ${<:.c=.o}
		

bonus:		all		${OBJS_B}
			@ar rc	${NAME} ${OBJS_B} ${OBJS}
			@ranlib	${NAME}

clean:
			@${RM} ${OBJS} ${OBJS_B}

fclean:		clean
			@${RM} ${NAME}

re:			fclean all
