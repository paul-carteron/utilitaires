#' convertLineBreakToSpace
#'
#' @param text Chaine de caracteres
#'
#' @importFrom stringr str_replace_all str_squish
#' @importFrom magrittr "%>%"
#' @importFrom utils writeClipboard
#'
#' @return Renvoi la chaine de caractere sans les saut de lignes
#' @export
#'
convertLineBreakToSpace = function(text){
   res = text %>%
      str_replace_all("\n"," ") %>%
      str_squish()

   writeClipboard(res)
   return(res)
}
