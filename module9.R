#https://rprogrammingjournalizquierdo.blogspot.com/

install.packages("timeSeriesDataSets")

library(timeSeriesDataSets)

data("gtemp_ocean_ts")

head(gtemp_ocean_ts)


plot(gtemp_ocean_ts, 
     main = "Base R: Global Ocean Temperature Anomalies",
     xlab = "Time", ylab = "Temperature Anomaly (°C)",
     col = "purple", type = "l", lwd = 2)


hist(as.numeric(gtemp_ocean_ts),
     main = "Base R: Histogram of Global Ocean Temperature Anomalies",
     xlab = "Temperature Anomaly (°C)", col = "purple", border = "black",
     breaks = 20)  

library(lattice)

xyplot(gtemp_ocean_ts ~ time(gtemp_ocean_ts), 
       type = "l", col = "purple", 
       main = "Lattice: Global Ocean Temperature Anomalies",
       xlab = "Time", ylab = "Temperature Anomaly (°C)")


df <- data.frame(
  Year = as.numeric(time(gtemp_ocean_ts)),
  Temp = as.numeric(gtemp_ocean_ts)
)

df$Decade <- factor(floor(df$Year / 10) * 10)

bwplot(Temp ~ Decade,
       data = df,
       main = "Lattice: Ocean Temperature by Decade",
       xlab = "Decade",
       ylab = "Temperature Anomaly (°C)",
       col  = "purple")

install.packages("ggplot2")
library(ggplot2)

gtemp_df <- data.frame(
  Time = time(gtemp_ocean_ts), 
  TempAnomaly = as.numeric(gtemp_ocean_ts)
)

ggplot(gtemp_df, aes(x = Time, y = TempAnomaly)) +
  geom_line(color = "purple", size = 1) +
  labs(title = "Global Ocean Temperature Anomalies",
       x = "Time", y = "Temperature Anomaly (°C)")


library(ggplot2)

gtemp_df <- data.frame(
  Year = as.numeric(time(gtemp_ocean_ts)),
  Temp = as.numeric(gtemp_ocean_ts)
)

gtemp_df$Decade <- factor(floor(gtemp_df$Year / 10) * 10)
gtemp_df$Category <- gtemp_df$Decade   



gtemp_df$Decade <- factor(floor(gtemp_df$Year / 10) * 10)
gtemp_df$Category <- gtemp_df$Decade   

ggplot(gtemp_df, aes(x = Year, y = Temp, color = Decade)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Temperature vs Year with Trend by Decade",
       x = "Year",
       y = "Temperature Anomaly (°C)")

ggplot(gtemp_df, aes(x = Temp)) +
  geom_histogram(binwidth = 0.05, fill = "purple", color = "white") +
  facet_wrap(~ Category) +
  labs(title = "Temperature Distribution by Decade",
       x = "Temperature Anomaly (°C)",
       y = "Count")

