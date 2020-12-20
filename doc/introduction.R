## ----1------------------------------------------------------------------------
softmax <-function(x) {
  return (exp(x)/sum(exp(x)))
}

## ----2------------------------------------------------------------------------
library(StatComp20059)
x=c(15,7,10,23,46,8,33)
sx <- softmax(x)
list(x=x,softmax_x=sx)

## ----3------------------------------------------------------------------------
tanh <-function(x) {
  return ((exp(x)-exp(-x))/(exp(x)+exp(-x)))
}

## ----4------------------------------------------------------------------------
library(StatComp20059)
x <- c(0.15,0.77,-0.10,2.3,-0.46,0.8,-3.3)
tanhx <- tanh(x)
list(x=x,tanh_x=tanhx)

## ----5,eval=FALSE-------------------------------------------------------------
#  library(StatComp20059)
#  stock_predict<-function(symbol)
#  {
#  
#    #To ignore the warnings during usage
#    options(warn=-1)
#    options("getSymbols.warning4.0"=FALSE)
#    #Importing price data for the givensymbol
#    data<-data.frame(xts::as.xts(get(quantmod::getSymbols(symbol))))
#  
#    #Assighning the column names
#    colnames(data) <-c("data.Open","data.High","data.Low","data.Close","data.Volume","data.Adjusted")
#  
#    #Creating lag and lead features ofprice column.
#    data <-xts::xts(data,order.by=as.Date(rownames(data)))
#    data <- as.data.frame(merge(data,lm1=stats::lag(data[,'data.Adjusted'],c(-1,1,3,5,10))))
#  
#    #Extracting features from Date
#    data$Date<-as.Date(rownames(data))
#    data$Day_of_month<-as.integer(format(as.Date(data$Date),"%d"))
#    data$Month_of_year<-as.integer(format(as.Date(data$Date),"%m"))
#    data$Year<-as.integer(format(as.Date(data$Date),"%y"))
#    data$Day_of_week<-as.factor(weekdays(data$Date))
#  
#    #Naming variables for reference
#    today <- 'data.Adjusted'
#    tommorow <- 'data.Adjusted.5'
#  
#    #Creating outcome
#    data$up_down <-as.factor(ifelse(data[,tommorow] > data[,today], 1, 0))
#  
#    #Creating train and test sets
#    train<-data[stats::complete.cases(data),]
#    test<-data[nrow(data),]
#  
#    #Training model
#    model<-stats::glm(up_down~data.Open+data.High+data.Low+data.Close+
#                        data.Volume+data.Adjusted+data.Adjusted.1+
#                        data.Adjusted.2+data.Adjusted.3+data.Adjusted.4+
#                        Day_of_month+Month_of_year+Year+Day_of_week,
#                      family=binomial(link='logit'),data=train)
#  
#    #Making Predictions
#    pred<-as.numeric(stats::predict(model,test[,c('data.Open','data.High','data.Low','data.Close','data.Volume','data.Adjusted','data.Adjusted.1','data.Adjusted.2','data.Adjusted.3','data.Adjusted.4','Day_of_month','Month_of_year','Year','Day_of_week')],type= 'response'))
#  
#    #Printing results
#    print("Probability of Stockprice going up tommorow:")
#    print(pred)
#  }
#  
#  stock_predict('GOOGL')

