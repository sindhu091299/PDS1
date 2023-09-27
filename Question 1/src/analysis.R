frailty_data1 = read.csv("C:\\PDS\\Question 1\\Raw_data\\raw_frailty_data1.csv")

#Getting the info of complete csv
summary(frailty_data1)

frailty_data1$Frailty <- as.factor(frailty_data1$Frailty)


t_test_frailty1=with(frailty_data1,t.test(frailty_data1$Weight ~ frailty_data1$Frailty,var.equal = FALSE))
t_test_frailty1

capture.output(t_test_frailty1,file="C:\\PDS\\Question 1\\Result\\results1.txt")