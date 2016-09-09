library(arules)

df= read.csv("F:/Documents/Senior design/Janssen Gatech/new file/Actual_FPI_to_LPO.csv", header=FALSE)
dfs=str(df)
vn=apriori(dfs)
inspect(vn)