# Feedback - Nelly's Strong Password Generator

*Sarah Busson - DAFT Amsterdam 07/20*

## Repository

1. Your trello board or a picture is missing wether as a file/picture or as a link in your README file.
2. Same for the slides.
3. The gitignore file is missing too.

## Workflow

I think being able to see your pseudo-code might have helped me understand better your thinking process when you designed your password generator.
Though, I like the comments you add at the end of your code along with the sources of your research ! :)

## I liked that !

1. Secure the user's input with a loop.
2. The comments and the links so anyone can research and understand your code and the functions you used.
3. The interaction with the user ! Feels like talking with a real person !
4. You challenged yourself and made some extra code, wow ! ;) 
5. You made something that looks difficult actually very easy ! KISS :)

## From your code, I'd improve :

1. Add \n to another print to avoid printing print("")
2. Keep your functions simple and give them only one purpose : paswword generator should only generate a password, you could have created a function ask_user for exemple 
3. To avoid condition on yes and no, answer.lower() == yes fro example
4. Divide your crypto code in 2 functions : one to encrypt a given password return the key and encrypted password; and one to decrypt a password given the key and encrypted password!


## Bonus

1. Ask the user the length of his password, and how many capital letter, how many symbols maybe like a design tool !
2. Add a loop like 'Are you satisfied with the password ? Yes = break, No = password_generator again until yes 
