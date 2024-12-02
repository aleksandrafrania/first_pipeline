get_data <- function(){
  myPackage::unemp
}

make_plot <- function(data){
  ggplot(data) +
    geom_col(
      aes(
        y = active_population,
        x = year,
        fill = place_name
      )
    ) +
    theme(legend.position = "top",
          legend.title = element_blank())
}
