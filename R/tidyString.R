#' tidyString
#'
#' @param text Chaine de caractere
#'
#' @importFrom stringr str_replace_all str_squish
#'
#' @return Renvoi une chaine de caractere sans majuscules, caracteres ASCII, caracteres speciaux et remplace les espaces par des "_"
#' @export
#'
tidyString = function(text){
   text = str_replace_all(text, "[^[:alnum:]]", " ") %>%
      iconv(from = 'UTF-8', to = 'ASCII//TRANSLIT') %>%
      str_squish() %>%
      str_replace_all(pattern = " ", replacement = "_") %>%
      tolower()
   return(text)
}
