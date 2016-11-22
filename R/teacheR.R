# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

saveAnswer <- function(x, dir_path="answer"){
  if(!is.character(x)) stop("x must be a character!")
  if(!dir.exists(dir_path)) dir.create(dir_path)
  tmpName <- as.integer(Sys.time())
  path <- paste0(dir_path, "/",tmpName, ".R")
  writeLines(text = x, con = path)
  return(tmpName)
}

loadAnswer <- function(x, dir_path="answer"){
  file.edit(paste0(dir_path,"/",x,".R"))
}
