#' addRowEach
#'
#' @param data_frame Dataframe contenant les donnees du excel
#' @param interval Nombre de lignes avant de rajouter une ligne vide
#'
#' @return Renvoi une data.frame avec les lignes vides supplementaires
#' @export
#'
addRowEach = function(data_frame, interval = 4){

   cut <- rep(1:ceiling(nrow(data_frame)/interval), each = interval, len = nrow(data_frame))
   data_frame = data_frame[Reduce(c, lapply(split(1:nrow(data_frame), cut), c, NA)), ]

   return(data_frame)
}

