mplotVariableparametrizadanacional <-function(varname){
  
  glue("  \n## {varname} \n \n ") %>% cat()
  
  varindi<-variablescensales[variablescensales$mnemonico == {varname}, "descripcion"]
  
  glue::glue (" {varindi} \n ") %>% cat()
  
  mapa<-tm_shape(basemapa) +
    tm_polygons({varname}, 
                fill=as.numeric({varname}),      
                style="jenks",
                palette="YlOrBr",
                title= paste0({varname}," ",latmx),
                alpha = 0.5) + 
    tm_scale_bar(position = c("right", "bottom")) +
    tm_layout(legend.position = c("right", "top"),asp=1 ,scale=0.5)
  
 print(mapa)
  
  cat("\n \n ")
}

