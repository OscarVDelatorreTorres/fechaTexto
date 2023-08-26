# Esta función de R es para investigadores, analistas y estudiantes de habla
# hispana. Tiene la mera finalidad de coadyuvar a la gneración del texto
# de la fecha de un objeto de ese tipo: fecha en R.
#
#
# Ejemplo:
# fecha=Sys.Date()
# fechaTexto(fecha)
#
# Creado por el Dr. OScar V. De la Torre-Torres 
# 26 de agosto de 2023

fechaTexto=function(fecha){
  textosMes=data.frame(ID=c(1,2,3,4,5,6,7,8,9,10,11,12),
                       Texto=c("enero",
                               "febrero",
                               "marzo",
                               "abril",
                               "mayo",
                               "junio",
                               "julio",
                               "agosto",
                               "septiembre",
                               "octubre",
                               "noviembre",
                               "diciembre"))
  diaId=day(fecha)
  mesId=month(fecha)
  mesTexto=textosMes$Texto[which(textosMes$ID==mesId)]
  yearId=year(fecha)
  textoFecha=paste0(diaId," de ",mesTexto," del ",yearId)
  return(textoFecha)
}