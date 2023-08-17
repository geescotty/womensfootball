### Women's Football Analysis ####
library(dplyr)
library(jsonlite)
library(ggplot2)
library(ggforce)
json_data <- fromJSON("3775609.json")
coordinates_split <- strsplit(json_data$location, ",")
json_data$x <- sapply(coordinates_split, function(coord) {
  as.numeric(coord[1])
})

json_data$y <- sapply(coordinates_split, function(coord) {
  as.numeric(coord[2])
})
ggplot(data=json_data) +
  ylab("")+
  xlab("")+
  theme(panel.background = element_rect(fill = 'lime green'),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank()) +
  geom_segment(aes(x=0,y=0,xend=105,yend=0),color="white",size=1.5)+
  geom_segment(aes(x=0,y=68,xend=105,yend=68),color="white",size=1.5)+
  geom_segment(aes(x=0,y=0,xend=0,yend=68),color="white",size=1.5)+
  geom_segment(aes(x=105,y=0,xend=105,yend=68),color="white",size=1.5)+
  geom_segment(aes(x=52.5,y=0,xend=52.5,yend=68),color="white",size=1.5)+ ### main fields lines
  geom_point(aes(x=52.5,y=34),col="white",size=4)+ ## centre point
  geom_segment(aes(x=-2,y=30.34,xend=-2,yend=37.66),color="white",size=1.5)+
  geom_segment(aes(x=-2,y=30.34,xend=0,yend=30.34),color="white",size=1.5)+
  geom_segment(aes(x=-2,y=37.66,xend=0,yend=37.66),color="white",size=1.5)+
  geom_segment(aes(x=107,y=30.34,xend=107,yend=37.66),color="white",size=1.5)+
  geom_segment(aes(x=107,y=30.34,xend=105,yend=30.34),color="white",size=1.5)+
  geom_segment(aes(x=107,y=37.66,xend=105,yend=37.66),color="white",size=1.5)+ ### goalposts
  geom_segment(aes(x=88.5,y=13.84,xend=88.5,yend=54.16),color="white",size=1.5)+
  geom_segment(aes(x=88.5,y=13.84,xend=105,yend=13.84),color="white",size=1.5)+
  geom_segment(aes(x=88.5,y=54.16,xend=105,yend=54.16),color="white",size=1.5)+
  geom_segment(aes(x=16.5,y=13.84,xend=16.5,yend=54.16),color="white",size=1.5)+
  geom_segment(aes(x=0,y=13.84,xend=16.5,yend=13.84),color="white",size=1.5)+  
  geom_segment(aes(x=0,y=54.16,xend=16.5,yend=54.16),color="white",size=1.5)+ ### penalty area 
  geom_segment(aes(x=99.5,y=24.84,xend=99.5,yend=43.16),color="white",size=1.5)+
  geom_segment(aes(x=99.5,y=24.84,xend=105,yend=24.84),color="white",size=1.5)+
  geom_segment(aes(x=99.5,y=43.16,xend=105,yend=43.16),color="white",size=1.5)+
  geom_segment(aes(x=5.5,y=24.84,xend=5.5,yend=43.16),color="white",size=1.5)+
  geom_segment(aes(x=0,y=24.84,xend=5.5,yend=24.84),color="white",size=1.5)+  
  geom_segment(aes(x=0,y=43.16,xend=5.5,yend=43.16),color="white",size=1.5)+ ### gk box
  geom_circle(aes(x0 = 52.5, y0 = 34, r = 9.15), color = "white", fill = NA,size=1.5) ### centre circle




  
  
  
