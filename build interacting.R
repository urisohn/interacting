  
rm(list = ls())
pkg_path <- "c:/git/interacting/r"
  #pkg_path <- "/Users/andres/Documents/[2] projects/[7] interacting/interacting/R" #in Andres's computer
  
  
#INSTALL
  devtools::document(pkg_path)
  devtools::build(pkg_path, path="C:/dropbox/research/GAM Floodlight/interacting_0.1.0.9001.tar.gz")
  devtools::install(pkg_path, dependencies = FALSE, build = TRUE)
  library('interacting')
  install.package(path, repos=NULL)
###################################################################

  
    #SOURCE
      rm(list = ls())

  pkg_path <- "c:/git/interacting/r"
  
  scripts<-list.files(pkg_path,full.names = TRUE)
  for (scriptk in scripts) {
    if (!basename(scriptk) %in% c('interprobe___.R','interprobe___.R','interprobe2.R')) {
    message("next:",basename(scriptk))
    source(scriptk)
    } }
  y=NULL
   data=NULL
  model=NULL
  k=3
  zs=NULL
  spotlights=NULL
  spotlight.labels=NULL
  
  draw = 'both'
  histogram = TRUE
  nbins = NULL
  n.max = 50  #below this sample size we shade to show few observations
  xlab='moderator'
  cols=c('red4','blue4','green4')
  ylab1='Dependent Variable'
  ylab2='Marginal Effect'
  main1="GAM Simple Slopes"
  main2='GAM JN'
  focal.label = 'Focal Predictor (x)'
  xlim=NULL
  force.discrete.freqs=FALSE
   n.bin.continuous = 10
  max.unique=11
  legend.round=c(2,4)
  file=NULL
  ylim1=NULL  
  ylim2=NULL
  x.ticks=NULL
  y1.ticks=NULL
  y2.ticks=NULL
  quiet=FALSE

  legend.simple.slopes  = NULL
  legend.johnson.neyman = NULL




   n=1000
    x=sample(c(2,1,0),size=n,r=T)
    z=rnorm(n,mean=150,sd=30)
    y.raw = x*sqrt(z)
    e=rnorm(n,sd=sd(y.raw))
    y=y.raw+e
    #library('interacting')
    
    x=factor(x)
    r=interprobe(x,z,y)
    interprobe(x,z,y,y1.ticks=data.frame(val=c(0,10,20),lab=c('low','medium','high')),file='c:/temp/f1.svg')
    
   dev.off()

  library('interacting')
    n=100
    x=sample(c(1,2,3),n,replace=TRUE)
    z=sample(c(1,2,3,4,5,6,6,6,7,7,7),replace=TRUE,size=n)
    y.raw = x*sqrt(z)
    e=rnorm(n,sd=sd(y.raw))
    z1=sample(c(44,55,66),n,r=T)
    y=y.raw+e
    
    
  
    