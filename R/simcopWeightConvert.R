#' simcopWeightConvert
#'
#' @param ... number separate with ","
#' @param nbClasse nombre de classe utilisees par eclaircie
#'
#' @return Renvoi les nombres formattes au mode script
#' @export
#'
simcopWeightConvert = function(..., nbClasse = 5){

   number = list(...)
   number = unlist(number)

   nbEcl = length(number)/nbClasse

   multipleRes = split(number, rep_len(1:nbEcl, length(number)))

   multipleRes = lapply(multipleRes, function(x){paste0("[",paste0(x,collapse = ","),"]")})
   res = paste(unlist(multipleRes), collapse = "\n")

   writeClipboard(res)
   return(res = cat(res))

}
