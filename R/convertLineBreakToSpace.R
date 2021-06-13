#' convertLineBreakToSpace
#'
#' @param text Chaine de caracteres
#'
#' @importFrom stringr str_replace_all str_squish
#'
#' @return Renvoi la chaine de caractere sans les saut de lignes
#' @export
#'
#' @examples
convertLineBreakToSpace = function(text){
   res = text %>%
      str_replace_all("\n"," ") %>%
      str_squish()

   writeClipboard(res)
   return(res)
}
