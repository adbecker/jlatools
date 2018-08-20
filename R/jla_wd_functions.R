#' @title windows2mac
#' @param wd A windows working directory to be converted to mac
#' @export
windows2mac <- function(wd){

  str <- strsplit(wd, '/')[[1]]
  str[3] <- 'Justine'
  str <- str[-1]

  new.wd <- paste0('/',str,collapse = '')

  return(new.wd)
}

#' @title mac2windows
#' @param wd A mac working directory to be converted to windows
#' @export
mac2windows <- function(wd){

  str <- strsplit(wd, '/')[[1]]
  str[3] <- 'jlatkins'
  str <- str[-1]

  new.wd <- paste0('C:',paste0('/',str,collapse = ''),'/')

  return(new.wd)

}

#' @title jla_wd
#' @description Changes working directy to its mac or windows equivalent
#' @param wd A mac or windows working directory
#' @export
jla_wd <- function(wd){


  if(.Platform$OS.type == "unix") {

    new.wd <- windows2mac(wd)

  } else {

    new.wd <- mac2windows(wd)

  }

  sewtd(new.wd)

}
