library(arules)

df= read.csv("F:/Documents/Senior design/Janssen Gatech/new file/Actual_FPI_to_LPO.csv", header=FALSE)
#Shen's edit: instead of assign the str funtion to a variable dfs, directly call the function
str(df)
vn=apriori(df)
inspect(vn)
