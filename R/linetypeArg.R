#' linetypeArg
#'
#' @param couleur Choix de la couleur d'affichage
#'
#' @importFrom dplyr mutate
#' @importFrom ggplot2 aes element_text geom_segment ggplot labs scale_linetype_identity scale_x_continuous theme theme_bw
#' @importFrom rlang .data
#'
#' @return graph montrant les differentes possibilites
#' @export
#'
linetypeArg = function(couleur = "blue"){
   lt <- NULL
   d = data.frame(
      lt = c(
         "solid",
         "91",
         "longdash",
         "dashed",
         "49",
         "twodash",
         "dotdash",
         "dotted",
         "19",
         "blank"
      )) %>%
      mutate(lt = factor(lt,levels = .data$lt))

   graph = ggplot() +
      geom_segment(data=d, mapping=aes(x=0, xend=1, y=lt, yend=lt, linetype=lt),
                   size =1, color = couleur)+
      scale_x_continuous(name="", limits=c(0,1), breaks = NULL) +
      scale_linetype_identity() +
      labs(y = "",
           title = "Different kind of linetypes arguments")+
      theme_bw()+
      theme(plot.title = element_text(vjust = 0.5, hjust =0.5))

   return(graph)
}

