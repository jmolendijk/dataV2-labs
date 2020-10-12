# Agreements on good practices for python programming

### Variable naming

- Variable names should be lowercase, with words separated by underscores as necessary to improve readability.
- Never use the characters 'l' (lowercase letter el), 'O' (uppercase letter oh), or 'I' (uppercase letter eye) as single-character variable names.
- Avoid global variables - Variables that are declared at the module level.

### Function naming

- Function names should be lowercase, with words separated by underscores as necessary to improve readability.
- Use lower_case_with_underscores.
- eg: def high_scores()

### Libraries

- Python packages or libraries should also have short, all-lowercase names, although the use of underscores is discouraged.
- Import each module using the full pathname location of the module.
- Imports should usually be on separate lines

### Community conventions:

- Indentation - Indent your code blocks with 4 spaces.
- Maximum Line Length - Limit all lines to a maximum of 79 characters.
- Docstrings - you should have a comment that describes what the method does. This comment should appear after the def line. 
- Blank Lines
  - Surround top-level function and class definitions with two blank lines.
  -  Method definitions inside a class are surrounded by a single blank line.

### Other (git, ...)

- Each commit should be a single logical change. Don't make several logical changes in one commit.
- Use the editor, not the terminal, when writing a commit message
- Use short and descriptive branch names.
- Test before you push. Do not push half-done work.