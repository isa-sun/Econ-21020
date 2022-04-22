library(readxl)
data <- read_excel('caschool.xlsx')

income= 1000*(data$avginc)
mean(data$avginc)
sd(data$avginc)

mean(income)
sd(income)

mean(data$math_scr)

frac_sm= mean(data$str<=20)
avg_sm= mean(data$math_scr[data$str<=20])
sd_sm= sd(data$math_scr[data$str<=20])
n_sm= length(data$math_scr[data$str<=20])

frac_lg= mean(data$str>20)
avg_lg= mean(data$math_scr[data$str>20])
sd_lg= sd(data$math_scr[data$str>20])
n_lg= length(data$math_scr[data$str>20])

(avg_sm-avg_lg)/sqrt((sd_sm)^2/n_sm+(sd_lg)^2/n_lg)

qnorm(0.95)
 
cov(data$avginc, data$math_scr)
cov(income, data$math_scr)

cor(data$avginc, data$math_scr)
cor(data$avginc, data$math_scr)

