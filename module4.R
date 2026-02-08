#https://rprogrammingjournalizquierdo.blogspot.com/

Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BloodPressure <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

data <- data.frame(Frequency, BloodPressure, First, Second, FinalDecision)

boxplot(Frequency, BloodPressure, First, Second, FinalDecision, 
        names = c("Frequency", "BloodPressure", "First", "Second", "FinalDecision"), 
        main = "Side-by-Side Boxplot", 
        ylab = "Values")

par(mfrow = c(1, 2)) 


hist(Frequency, col = "purple", main = "Histogram of Frequency", xlab = "Frequency", 
     breaks = 5)

hist(BloodPressure, col = "lightgreen", main = "Histogram of Blood Pressure", 
     xlab = "Blood Pressure", breaks = 5)



