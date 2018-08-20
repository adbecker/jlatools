windows2mac <- function(wd){

  str <- strsplit(wd, '/')[[1]]
  str[3] <- 'Justine'
  str <- str[-1]

  new.wd <- paste0('/',str,collapse = '')

  return(new.wd)
}

mac2windows <- function(wd){

  str <- strsplit(wd, '/')[[1]]
  str[3] <- 'jlatkins'
  str <- str[-1]

  new.wd <- paste0('C:',paste0('/',str,collapse = ''),'/')

  return(new.wd)

}


jla_wd <- function(wd){


  if(.Platform$OS.type == "unix") {

    new.wd <- windows2mac(wd)

  } else {

    new.wd <- mac2windows(wd)

  }

  sewtd(new.wd)

}
