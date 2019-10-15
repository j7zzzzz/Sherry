> make.shadow=function(xStart,xEnd,xIncr,func = dt,df=NULL) #填上陰影區域
+ {
+   middle = seq(xStart,xEnd,by=xIncr)
+   x0 = c(xStart,middle,xEnd)
+   y0 = c(0 , func(middle,df=df),0)
+   return(list(x=x0,y=y0))
+ }
> s=make.shadow(-1.75,2.875,0.05,func = dt,df=2)               #令s為由-1.75到2.875的區域
> curve(dt(x,df=2),-5,5)                                 #畫上t分配
> abline(h=0)                                                  #畫上底線
> polygon(s$x,s$y,density = 48,angle = 45)                     #畫上陰影
> 


Z=c(seq(0,0.09,0.01))
rows=NULL
for(i in c(seq(0,3,0.1)))
{
	row.now=round(pnorm(Z+i),digit=4)
	rows=rbind(rows,row.now)
}
rows=rbind(Z,rows)
row.names(rows)=c('Z',as.character(seq(0,3,0.1)))
rows