#read
#special tool such as Talend and informatica has been used to do the heavy lifting on a EC2 instance to create
#the 3 csv file below by transforming it into the a way we can do proper analysis
#R is used here to do inner join based on Uniq ID
#uniqID is created based syncID+planyearseq+baselinedescription

dfOtherdetail=read.csv("C:/Users/lshen28/Downloads/Janssen Gatech/otherDetail.csv")
#dfOtherdetail
dfPerformance=read.csv("C:/Users/lshen28/Downloads/Janssen Gatech/Performance.csv")
#dfPerformance #0=on track, 1=delay, -1=accelerated 
dfActivity=read.csv("C:/Users/lshen28/Downloads/Janssen Gatech/Activity.csv")
#dfActivity #0=no change, 1=change

#Final Transformed file
HistTranfpp=merge(x=dfPerformance, y=dfActivity, by="Uniq.ID", all=TRUE) 

write.csv(HistTranfpp,"C:/Users/lshen28/Downloads/Janssen Gatech/HistoricP5Activty_Changes.csv")

HistTranfpf = read.csv("C:/Users/lshen28/Downloads/Janssen Gatech/HistoricP5Activty_Changes.csv")
HistTranff= merge(x=HistTranfpf,y=dfOtherdetail, by="Uniq.ID", all=TRUE)
write.csv(HistTranff,"C:/Users/lshen28/Downloads/Janssen Gatech/HistoricP5Transformed.csv")
