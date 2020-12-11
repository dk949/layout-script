#Layout restoring tool

## contents of a .layout file
### variables
* lines beginning with a question mark contain variables that need to be taken in
* all variables should be separated by a space
    * there should be a space after the question mark too
* variables can be written on multiple lines, but every line has to begin with a question mark and a space
    * writing them on multiple lines as opposed to one has no effect
* for readability purposes it is suggested that the variables are capitalised

### functions
* lines beginning with the ampersand contain commands.
* at the moment, there are only 2 commands, APPLICATION and NEOVIM
* APPLICATION takes 1 parameter, name of the application and all of its parameters
* NEOVIM takes 2 parameters, working directory and the file to open relative to that working directory
    * it is possible NEOVIM will take a 3rd option in the future with all options that need to be passed directly to nvim
    * it is also possible function VIM will be added shortly

### example
   	? DIR FILENAME
    & NEOVIM DIR FILENAME.tex
    & APPLICATION zathura DIR/FILENAME.pdf


## dependencies (at the moment)
* bash version >=4.0
* sed
* awk
* dmenu<sup>+</sup>
* alacritty*
-----------
* Note: items with <sup>+</sup> are likely to be optional. Items with * are likely to be removed from the dependencies list
