#' shapeArg
#'
#' @param couleur Choix de la couleur d'affichage
#'
#' @importFrom ggplot2 aes element_text ggplot labs theme theme_bw element_blank geom_point geom_text scale_shape_manual
#'
#' @return graph montrant les differentes possibilites
#' @export
#'
shapeArg = function(couleur = "blue"){
   x <- y <- label <- NULL
   d = data.frame(x = rep(1:5,each = 5),
                  y = rep(1:5,5),
                  label = factor(1:25, levels = 1:25))

   graph = ggplot() +
      geom_point(data = d,
                 aes(x = x, y=y, shape = label), size = 8, color = couleur)+
                 scale_shape_manual(values = 1:25)+
                 geom_text(data = d,
                           aes(x=x, y=y, label = label), nudge_y = -0.2)+
                 labs(title = "Different kind of shapes arguments",
                      x = "",
                      y = "")+
                 theme_bw()+
                 theme(legend.position = "none",
                       axis.text = element_blank(),
                       axis.ticks = element_blank())+
                 theme(plot.title = element_text(vjust = 0.5, hjust =0.5))
   return(graph)
}
