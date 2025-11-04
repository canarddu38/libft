NAME		= libft.a
CFLAGS		= -Wall -Werror -Wextra -I.
C_FILES		= 
O_FILES		= $(C_FILES:.c=.o)

all: $(NAME)

$(NAME): $(O_FILES)
	ar rcs $@ $<

clean:
	rm -rf $(OUT)

fclean: clean
	rm -rf $(O_FILES)

re: fclean all

.PHONY: NAME all clean fclean re