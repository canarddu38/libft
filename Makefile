NAME		= libft.a
BONUS_DONE	= .bonus_done
CFLAGS		= -Wall -Werror -Wextra -I.
C_FILES		=	ft_atoi.c \
				ft_bzero.c \
				ft_calloc.c \
				ft_isalnum.c \
				ft_isalpha.c \
				ft_isascii.c \
				ft_isdigit.c \
				ft_isprint.c \
				ft_itoa.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_memcpy.c \
				ft_memmove.c \
				ft_memset.c \
				ft_split.c \
				ft_strchr.c \
				ft_strdup.c \
				ft_strjoin.c \
				ft_strlcat.c \
				ft_strlcpy.c \
				ft_strlen.c \
				ft_strncmp.c \
				ft_strnstr.c \
				ft_strrchr.c \
				ft_strtrim.c \
				ft_substr.c \
				ft_tolower.c \
				ft_toupper.c \
				ft_strmapi.c \
				ft_striteri.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c

BONUS_C_FILES = ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c

O_FILES			= $(C_FILES:.c=.o)
O_FILES_BONUS	= $(BONUS_C_FILES:.c=.o)
O_FILES_ALL		= $(O_FILES) $(O_FILES_BONUS)

all: $(NAME)

$(NAME): $(O_FILES)
	ar -rcs $@ $(O_FILES)

bonus: $(BONUS_DONE)

$(BONUS_DONE): $(O_FILES_ALL)
	ar -rcs $(NAME) $(O_FILES_ALL)
	touch $(BONUS_DONE)

clean:
	rm -rf $(O_FILES_ALL) $(BONUS_DONE)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: $(NAME) all clean fclean re bonus